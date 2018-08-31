
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>
#include <errno.h>
#include <string.h>
#include <pthread.h>
#include <semaphore.h>
#include <x86intrin.h>
#include <sys/stat.h>

#include "fast_rand.h"

// Benchmark as of 3/20: (microseconds / generation of 65536)
//  1284, 1268, 1296, 1273, 1294. Average 1283 microseconds/generation (while doing stuff in the background)
// Benchmark as of "no bugs, working version" ~= 1250. I benchmarked 1247 and then 1250 while doing nothing
//  After optimizations: 1160, 1115, 1094
// 3/27 replacement of rand function with FastRand() gives us 1005
// 3/27 replacing reading from /dev/random with seeding random() from /dev/random and then using random() saved 15 microseconds / generation
// 8/20 - with clang, on dad's newer computer, 850 microseconds/generation. Replace clang with GCC,
// 600 microseconds/generation.

// Todo: multithreading. Only two cores so not much potential.
// Maybe you could have a random number generating core and a decision core

struct threadinfo {
    int thresh_aa;
    int thresh_ab;
    int thresh_bb;
    int next_members; // number of members to generate on each pass
    int num_generations;
    unsigned int *results;
    int *alldone;
    sem_t *semaphore;
    int thread_id;
};

void progress_generation(int thresh_aa, int thresh_ab, int thresh_bb, int next_members, int* result){
    
    // 0 | thresh_aa | thresh_ab | end = thresh_bb
#ifdef DEBUG
    printf("Thresholds: %d %d %d\t",thresh_aa,thresh_ab,thresh_bb);
    printf("AA has size: %d. AB has size %d. BB has size %d\n",thresh_aa,thresh_ab-thresh_aa,thresh_bb-thresh_ab);
    
    int from_first[5] = {0,0,0,0,0};
    int from_second[4] = {0,0,0,0};
    
    int from_second_first[4] = {0,0,0,0};
    int from_second_second[4] = {0,0,0,0};
    int from_second_third[4] = {0,0,0,0};
    int second_outputs[2] = {0,0};
    
    short *secondIndexes = (short *)malloc(35000*sizeof(short));
    
    int num_first = 0;
    int num_second = 0;
    
    struct timeval start;
    struct timeval end;
    gettimeofday(&start,NULL);
#endif
    
    int counts[5] = {0,0,0,0,0};
    if (next_members != 65536){
    	double offset = 65536/next_members;
    	thresh_aa *= offset;
    	thresh_ab *= offset;
    	thresh_bb *= offset;
    	printf("next_members != 65536\n");
    }
    
    fastrand rand_index = InitFastRand();
    fastrand rand_choice = InitFastRand();
	/*
	* This is a little bit complicated. In the old way, the choice over whether to have both bits
	* come from one parent or not was made more or less on the fly, which costs a shr and most 
	* importantly, an evil evil branch on every iteration. This branch was so awful because if the
	* random number generator is good, it is unpredictable, which means you have a branch miss half
	* of the time. Instead, we can refactor the decision making so it happens up here. What that means
	* is that we decide ahead of time how many have both bits come from one parent and how many
	* have one bit from each parent. This means that we don't have a branch in a loop here - there's
	* only the loop branch, which should have >99% prediction. This should make the code much faster.
	*/
    int both_one_parent = 0;
    for (int i = 0; i < (next_members>>7); i += 1){ // FastRand is 128 bits = 2^7 members per fastrand
    	FastRand(&rand_choice);
    	both_one_parent += __builtin_popcountll(* (rand_choice.res)) + 
    					   __builtin_popcountll(* (rand_choice.res+2)); // hopefully the compiler gets it
    }
//    both_one_parent = 0;
#ifdef DEBUG
    num_first = both_one_parent;
    num_second = next_members-both_one_parent;
    printf("%d first and %d second.\n",num_first,num_second);
#endif
    int one_parent = (both_one_parent >> 3) << 3;
    int two_parents = ((next_members-both_one_parent)>>2) << 3;
    one_parent += (one_parent+two_parents - next_members); // Fixes next_members change
    unsigned short *short_res = (unsigned short *)rand_index.res;
    // normally rand_index.res would be typed as an int *, though really it's a 128 bit register
    // location. Unsigned shorts cover the 0-65536 range. I could handle ints also, but it would be
    // something like half as fast.

    // For ones where both bits come from one parent
    for (int i = 0; i < one_parent; i+=8){
    	FastRand(&rand_index);
    	for (int k = 0; k < 8; k++){
    		unsigned short firstIndex = short_res[k];
    		counts[(firstIndex < thresh_aa) + (firstIndex < thresh_ab)] += 1;
    		// 0 = bb, 1 = ab, 2 = aa
#ifdef DEBUG
			from_first[(firstIndex < thresh_aa) + (firstIndex < thresh_ab)] += 1;
#endif
    	}
    }
    counts[3] = counts[0];
    counts[0] = counts[2];
    counts[2] = 0;
    // Counts output: 0: aa 1: ab 2: ab 3: bb 4: bb , so we have to fiddle around a bit

    for (int i = 0; i < two_parents; i+=4) {
    	// >> 2 and not 3 because the cycle only gives 4 results, not 8, because it needs 32 bits
    	FastRand(&rand_index);
    	for (int k = 0; k < 8; k++){
    		unsigned short firstIndex = short_res[k];
    		k += 1;
    		unsigned short secondIndex = short_res[k];
    		char allele = 0;
                        
            // Three tests for first bit: firstIndex > thresh_ab in which case it's 1. firstIndex < thresh_aa in which case it's 1. threst_aa < firstIndex < thresh_ab 50% chance
            if (firstIndex > thresh_ab) { // if it's a bb, then both alleles are b so result is b
                allele = 1;
            }
            else if (firstIndex > thresh_aa) {
                allele = secondIndex&1;
            }
                        
        	#ifdef DEBUG
                second_outputs[allele] += 1;
        	#endif
                        
            if (secondIndex > thresh_ab) { // We know second one is BB
                counts[allele+2] += 1;

        		#ifdef DEBUG
                	from_second[allele+2] += 1;
                    from_second_first[allele+2] += 1; // Occur 1/4 of the time and be 1/2 2 and 1/2 3
        		#endif
            }
                        
            else if (secondIndex > thresh_aa) { // Second one is AB
                counts[allele+(firstIndex&2)] += 1; // This used to be firstIndex. This caused an insidious bug where aa and bb were relatively favored 10:12:10 when they should be 8:16:8
                // This used to be allele+secondIndex&2 and the &2 operated after the + so it was always 0 or 2
        		#ifdef DEBUG
                    from_second[allele+(firstIndex&2)] += 1;
                    from_second_second[allele + (firstIndex&2)] += 1; // Should encounter 0 50% of time and 1 50% of time and give 2 50% of time and 0 50% of time. Should be 25% for all
        		#endif
            }
                        
            else { // second one is AA
                counts[allele] += 1;
        		#ifdef DEBUG
                   from_second[allele] += 1;
                   from_second_third[allele] += 1;
        		#endif
            }
    	}
    }
    
#ifdef DEBUG
    from_second[1] += from_second[2];
    from_second[2] = from_second[3];
    // aa: 0, 
    gettimeofday(&end,NULL);
    printf("Took %ld microseconds to progress generation\n",(1000000 * end.tv_sec + end.tv_usec) -  (1000000 * start.tv_sec + start.tv_usec));
    printf("From first aa: %d from second %d. From first ab: %d from second: %d. From first bb: %d from second %d\n",from_first[0],from_second[0],from_first[2],from_second[1],from_first[4],from_second[2]);
#ifndef THREADED
    printf("First was chosen %d times. Second was chosen %d times\n",num_first,num_second);
    printf("From second started with 0 %d times and 1 %d times\n",second_outputs[0],second_outputs[1]);
    printf("From second first:\t%d %d %d %d\n",from_second_first[0],from_second_first[1],from_second_first[2],from_second_first[3]);
    printf("From second second:\t%d %d %d %d\n",from_second_second[0],from_second_second[1],from_second_second[2],from_second_second[3]);
    printf("From second third:\t%d %d %d %d\n",from_second_third[0],from_second_third[1],from_second_third[2],from_second_third[3]);
    printf("0: %d, 1: %d, 2: %d 3: %d\n",counts[0],counts[1],counts[2],counts[3]);
#endif
#endif
    // 0: aa 1: ab 2: ab 3: bb 4: bb
    result[0] = counts[0]; // aa
    result[1] = counts[1] + counts[2]; // ab
    result[2] = counts[3] + counts[4]; // bb
}

void * pthread_handler(void* args){
    struct threadinfo myinfo = *(struct threadinfo*)args;
    int thresh_aa = myinfo.thresh_aa;
    int thresh_ab = myinfo.thresh_ab;
    int thresh_bb = myinfo.thresh_bb;
    int num_generations = myinfo.num_generations;
    int next_members = myinfo.next_members;
    unsigned int *results = myinfo.results;
    int *alldone = myinfo.alldone;
    int thread_id = myinfo.thread_id;
    sem_t *semaphore = myinfo.semaphore;
    
    int total_members_per_generation = 65536; // This should be a component of the struct
    int timeslept = 0;
    int preliminary_results[3] = {0,0,0};
    
    for (int i = 0; i < num_generations; i++){
#ifdef DEBUG
        printf("loop_start thread %d generation %d\n",thread_id,i);
#endif
        progress_generation(thresh_aa,thresh_ab,thresh_bb,next_members,preliminary_results);
#ifdef DEBUG
        printf("wait_start %d\n",thread_id);
#endif
        sem_wait(semaphore); // This has to be done for results to be consistent. Hopefully it isn't too slow.
        results[0] += preliminary_results[0];
        results[1] += preliminary_results[1];
        results[2] += preliminary_results[2];
        sem_post(semaphore);
        
#ifdef DEBUG
        printf("results %d: %d %d %d\tTotal is %d\n",thread_id,preliminary_results[0],preliminary_results[1],preliminary_results[2],results[0] + results[1] + results[2]);
#endif
        
        while ((results[0] + results[1] + results[2]) != total_members_per_generation){
            struct timespec time_to_sleep = {.tv_sec = 0, .tv_nsec = 20000}; // 20 microseconds isn't too bad
            nanosleep(&time_to_sleep, NULL);
        }
        thresh_aa = results[0];
        thresh_ab = thresh_aa + results[1];
        thresh_bb = thresh_ab + results[2];
        results += 3;
#ifdef DEBUG
        printf("end loop thread %d. aa: %d ab: %d bb: %d\n",thread_id,thresh_aa,thresh_ab,thresh_bb);
#endif
    }
    
    printf("Thread %d is ending. num_generations is %d.\n",thread_id,num_generations);
    pthread_exit(args);
}

void initialize_generation(int number, int* gen){ // 14 milliseconds faster on generating 1.6 million organisms lol. 224 organisms / microsecond is good
    // AA consistently has ~17.5k while BB consistently has ~15k.
    // This is equivalent to a normal distribution. There's probably some normal distribution function I could use that's faster.
    int num_aa = 0;
    int num_ab = 0;
    int num_bb = 0;
    
    struct timeval start;
    struct timeval end;
    gettimeofday(&start,NULL);
    
    for (int i = 0;i < number/8; i++){  // 8 instead of 16 because the upper bit is always 0.
        // It would be more efficient to make this 15 or something but who cares
        int n = random();
        
        #pragma clang loop unroll(full)
        for (int j = 0; j < 8; j++){ // This needs to be unrolled
            char organism = n & 3;
            if (organism == 0){
                num_aa += 1;
            }
            else if (organism == 3){
                num_bb += 1;
            }
            else {
                num_ab += 1;
            }
            n >>= 2;
        }
    }
    
    gettimeofday(&end,NULL);
    
#ifdef DEBUG
    printf("Took %ld microseconds to generate new generation with %d aa, %d ab, and %d bb\n",(1000000 * end.tv_sec + end.tv_usec) -  (1000000 * start.tv_sec + start.tv_usec),num_aa,num_ab,num_bb);
#endif
    
    gen[0] = num_aa;
    gen[1] = num_ab;
    gen[2] = num_bb;
}

void fill_random_state_buffers(){
	int fd = open("/dev/urandom",O_RDONLY);
	char * buffer = malloc(256+4);
	read(fd,buffer,256+4);
	close(fd);
	unsigned int seed = (unsigned int) *buffer;
	buffer += 4;
	initstate(seed,buffer,256);
}

int main(int argc, char **argv){
    int num_organisms = 0;
    int num_generations = 0;
    if (argc < 3){
        num_organisms = 65536;
#ifdef DEBUG
        num_generations = 5;
#endif
#ifdef SPEEDTEST
        num_generations = 1000;
#endif
    }
    else {
        num_organisms = atoi(argv[1]);
        num_generations = atoi(argv[2]);
        if (__builtin_popcount(num_organisms) != 1){
        	printf("num_organisms must be a multiple of 2\n");
        	exit(1);
        }
    }
#ifndef SPEEDTEST
    printf("Simulating %d organisms for %d generations\n",num_organisms,num_generations);
#endif
    srandomdev(); // Seeds random() using information from /dev/random
    int initial_values[3];
    initialize_generation(num_organisms,initial_values);
    int thresh_aa = initial_values[0];
    int thresh_ab = thresh_aa + initial_values[1];
    int thresh_bb = thresh_ab + initial_values[2];
    int **results = (int **) malloc(num_generations*3*sizeof(int));
    int result[3] = {0,0,0};    
#ifdef THREADED
    unsigned int *thread_results = malloc(num_generations*sizeof(int)*3);
    memset(thread_results, 0, num_generations*sizeof(int)*3); // Sometimes it has random pieces of data. It shouldn't and this is an easy way to fix that.
    int alldone = 0;
    sem_t *semaphore;
    if ((semaphore = sem_open("/semaphore", O_CREAT, 0644, 1)) == SEM_FAILED ) { // from https://heldercorreia.com/semaphores-in-mac-os-x-fd7a7418e13b
        perror("sem_open");
        exit(EXIT_FAILURE);
    }
    pthread_t threads[4];
    pthread_t thread;
    int thread_err;
    struct threadinfo tinfo = {.thresh_aa = thresh_aa, .thresh_ab = thresh_ab, .thresh_bb = thresh_bb, .num_generations = num_generations, .results = thread_results, .alldone = &alldone, .next_members = num_organisms>>2, .semaphore = semaphore, .thread_id = 0};
    for (int i = 0; i < 4; i++){
        void * thread_info = malloc(sizeof(tinfo));
        tinfo.thread_id = i;
        memcpy(thread_info,(void *)&tinfo,sizeof(tinfo)); // So we can have thread specific data, specifically thread_id
        
        thread_err = pthread_create(&thread , NULL, pthread_handler, thread_info);
        if (thread_err != 0){
            printf("error in thread creation: %d\n",thread_err);
        }
        threads[i] = thread;
    }
    int generation = 0;
    struct timeval start;
    struct timeval end;
    gettimeofday(&start,NULL);
    int k = num_generations * 3;
    int time_taken;
    struct timespec one_second = {.tv_sec = 1, .tv_nsec = 0};
    nanosleep(&one_second, NULL);
    for (int i = 0; i < k; i += 3){
        while (thread_results[i] + thread_results[i+1] + thread_results[i+2] != num_organisms){
            gettimeofday(&end,NULL);
            time_taken = (1000000 * end.tv_sec + end.tv_usec) -  (1000000 * start.tv_sec + start.tv_usec);
            printf("Results for generation %d: %d %d %d\n",i/3,thread_results[i],thread_results[i+1],thread_results[i+2]);
            printf("Took %d microseconds to go %d generations, %d microseconds/generation\n",time_taken,i/3,time_taken*3/i);
            nanosleep(&one_second, NULL);
        }
    }
    while (1){
        
    }
    return 0;
#else
#ifdef DEBUG
    for (int i = 0; i < num_generations; i++){
        progress_generation(thresh_aa, thresh_ab, thresh_bb, num_organisms,result);
        printf("aa: %d ab: %d bb: %d\n",result[0],result[1],result[2]);
        thresh_aa = result[0];
        thresh_ab = thresh_aa + result[1];
        thresh_bb = thresh_ab + result[2];
        results[i] = result;
    }
#else
#ifdef SPEEDTEST
    int time_takens[20];
    int average = 0;
    for (int i = 0;i < 20; i++){
        struct timeval start;
        struct timeval end;
        gettimeofday(&start,NULL);
        for (int j = 0; j < 1000; j++) {
            progress_generation(thresh_aa, thresh_ab, thresh_bb, num_organisms, result);
            thresh_aa = result[0];
            thresh_ab = thresh_aa + result[1];
            thresh_bb = thresh_ab + result[2];
        }
        gettimeofday(&end,NULL);
        int time_taken = (1000000 * end.tv_sec + end.tv_usec) -  (1000000 * start.tv_sec + start.tv_usec);
        printf("%d microseconds\t",time_taken);
        printf("aa: %d\tab:%d\tbb:%d\n",result[0],result[1],result[2]);
        time_takens[i] = time_taken;
        average += time_taken;
        
        initialize_generation(num_organisms,initial_values);
        thresh_aa = initial_values[0];
        thresh_ab = thresh_aa + initial_values[1];
        thresh_bb = thresh_ab + initial_values[2];
    }
    printf("Took on average %d microseconds per 1000 generationss or %d microseconds per generation\n",average/20,average/20000);
#else
    char *fifoname = "results";
    if (argc == 4){
        fifoname = argv[3];
    }
    
    if (mkfifo(fifoname, 0777) == -1){
        printf("Failure in making fifo: %s\n",strerror(errno));
    }
    
    int fd = open(fifoname, O_WRONLY);
    
    printf("Writing results to FIFO device %s with fd %d\n",fifoname,fd);
    char *format_string = "aa: %d\tab:%d\tbb:%d\n";
    char *write_string = (char *) malloc(200);
    
    for (int i = 0; i < num_generations/100; i++){
        for (int j = 0; j < 100; j++) {
            progress_generation(thresh_aa, thresh_ab, thresh_bb, num_organisms,result);
            thresh_aa = result[0];
            thresh_ab = thresh_aa + result[1];
            thresh_bb = thresh_ab + result[2];
            results[i*100 + j] = result;
        }
        int string_length = sprintf(write_string, format_string, result[0], result[1], result[2]);
        write(fd, write_string, string_length);
        if (result[0] == 0 || result[2] == 0){ // Totally shifted to one side or the other
            for (int j = i; j < num_generations/100; j++){
                write(fd, write_string, string_length);
            }
            break;
        }
    }
    close(fd);
#endif
#endif
#endif
    return 0;
}
