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

// Benchmark as of 3/20: (microseconds / generation of 65536)
//  1284, 1268, 1296, 1273, 1294. Average 1283 microseconds/generation (while doing stuff in the background)
// Benchmark as of "no bugs, working version" ~= 1250. I benchmarked 1247 and then 1250 while doing nothing
//  After optimizations: 1160, 1115, 1094


// Todo: multithreading


/*
 * Each organism is going to be represented as a char. We could be more efficient - slightly so at least - by putting 4 organisms in each char. However, I believe this would be computationally
 * inefficient, because you would have to do a lot of ORs to get each individual organism. Perhaps if memory bandwidth is the limiting factor this would be useful.
 * The L2 cache is 256KB. Perhaps we could try to store everything in L2 cache.
 
 * Wow so I thought initially I would have to get all my stuff from /dev/random, so I was limited to 10 bytes/microsecond. Then I remebered the other rand functions, so I thought I could get
 * use those, and it turns out rand() would have given me 360 bytes / microsecond, 1.5 orders of magnitude faster. Then random() is twice as fast as that - it gives me 755 bytes/microsecond. Wow!
 * Doing the math, it seems that random() returns in something like 6.87 cycles on average, which is incredibly fast.
 */

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
    
    short *secondIndexes = malloc(35000*sizeof(short));
    
    int num_first = 0;
    int num_second = 0;
    
    struct timeval start;
    struct timeval end;
    gettimeofday(&start,NULL);
#endif
    
    int counts[5] = {0,0,0,0,0};
    
    // What if you store all the values in a long long? You should be able to keep that in a single register so it would be faster. Each value could only go up to 65536
    
    // I should look up inline functions
    // The main logic in this loop should be inline
    
    
    // What if instead of current approach I have array [num_aa, num_ab, num_ba, num_bb] and said array[allele] = 1 so that I avoid an if statement? And then I add num_ab and num_ba together
    if (thresh_bb == 65536){
        for (int i = 0; i < next_members/15; i++){
            int choiceEntropy = random(); // This way we can get 15 uses out of choiceEntropy. Not 16 because upper bit is always 0
            
#pragma clang loop unroll(full) // Takes average runtime from ~2000-2600 microseconds to 1200.
            for (int j = 0; j < 15; j++) {
                unsigned int indexEntropy = random() << 1; // This only produces 31 usable bytes, not 32. I have chosen to sacrifice the least significant bit.
                char choice = choiceEntropy & 3;
                choiceEntropy >>= 2;
                unsigned short firstIndex = indexEntropy >> 16; // Get 16 upper bits instead of lower 15 b/c we use firstIndex more
                
                if (choice == 0 || choice == 3){ // Both bits from one parent, doesn't matter which
#ifdef DEBUG
                    num_first += 1;
#endif
                    // Three groupings: > thresh_ab > thresh_aa > 0
                    
                    // Should shift to 0, 2, 4
                    
                    counts[4 >> (((firstIndex<thresh_aa)<<1)+(firstIndex<thresh_ab))] += 1;
#ifdef DEBUG
                    from_first[4 >> (((firstIndex<thresh_aa)<<1)+(firstIndex<thresh_ab))] += 1;
#endif // Somehow this code block being enabled causes an abort trap to fire between returning from this function and the next line of code being run because from_first wasn't large enough
                }
                
                else {
                    // there's no distinction between mother & father so ab is the same as ba
                    unsigned short secondIndex = indexEntropy&65535; // Gets the lower 15 bits shifted to 16 - the last bit will always be 0
#ifdef DEBUG
                    secondIndexes[num_second] = secondIndex;
                    num_second += 1;
#endif
                    char allele = 0;
                    
                    // Three tests for first bit: firstIndex > thresh_ab in which case it's 1. firstIndex < thresh_aa in which case it's 1. threst_aa < firstIndex < thresh_ab 50% chance
                    if (firstIndex > thresh_ab){ // if it's a bb, then both alleles are b so result is b
                        allele = 1;
                    }
                    else if (firstIndex > thresh_aa) {
                        allele = firstIndex&1;
                    }
                    
#ifdef DEBUG
                    second_outputs[allele] += 1;
#endif
                    
                    if (secondIndex > thresh_ab){ // We know second one is BB
                        counts[allele+2] += 1;
#ifdef DEBUG
                        from_second[allele+2] += 1;
                        from_second_first[allele+2] += 1; // Occur 1/4 of the time and be 1/2 2 and 1/2 3
#endif
                    }
                    
                    else if (secondIndex > thresh_aa){ // Second one is AB
                        counts[allele+(secondIndex&2)] += 1; // This used to be firstIndex. This caused an insidious bug where aa and bb were relatively favored 10:12:10 when they should be 8:16:8
                        // This used to be allele+secondIndex&2 and the &2 operated after the + so it was always 0 or 2
#ifdef DEBUG
                        from_second[allele+(secondIndex&2)] += 1;
                        from_second_second[allele + (secondIndex&2)] += 1; // Should encounter 0 50% of time and 1 50% of time and give 2 50% of time and 0 50% of time. Should be 25% for all
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
        }
        
        // Have to finish the rest
        int choiceEntropy = random();
        for (int j = 0; j < next_members-(next_members/15 * 15); j++){ // This most definitely needs to be unrolled
            unsigned int indexEntropy = random() << 1; // This only produces 31 usable bytes, not 32. I have chosen to sacrifice the least significant bit.
            char choice = choiceEntropy & 3;
            choiceEntropy >>= 2;
            unsigned short firstIndex = indexEntropy >> 16; // Get 16 upper bits instead of lower 15 b/c we use firstIndex more
            
            if (choice == 0 || choice == 3){ // Both bits from one parent, doesn't matter which
                
                
                counts[2 >> ((firstIndex<thresh_aa)+(firstIndex<thresh_ab))] += 1;
#ifdef DEBUG
                from_first[2 >> ((firstIndex<thresh_aa)+(firstIndex<thresh_ab))] += 1;
                num_first += 1;
#endif
            }
            
            else {
                // there's no distinction between mother & father so ab is the same as ba
                unsigned short secondIndex = indexEntropy&65535; // Gets the lower 15 bits shifted to 16 - the last bit will always be 0
#ifdef DEBUG
                secondIndexes[num_second] = secondIndex;
                num_second += 1;
#endif
                char allele = 0;
                
                // Three tests for first bit: firstIndex > thresh_ab in which case it's 1. firstIndex < thresh_aa in which case it's 1. threst_aa < firstIndex < thresh_ab 50% chance
                if (firstIndex > thresh_ab){ // if it's a bb, then both alleles are b so result is b
                    allele = 1;
                }
                else if (firstIndex > thresh_aa) {
                    allele = firstIndex&1;
                }
                
#ifdef DEBUG
                second_outputs[allele] += 1;
#endif
                
                if (secondIndex > thresh_ab){ // We know second one is BB
                    counts[allele+2] += 1;
#ifdef DEBUG
                    from_second[allele+2] += 1;
                    from_second_first[allele+2] += 1; // Occur 1/4 of the time and be 1/2 2 and 1/2 3
#endif
                }
                
                else if (secondIndex > thresh_aa){ // Second one is AB
                    counts[allele+(secondIndex&2)] += 1; // This used to be firstIndex. This caused an insidious bug where aa and bb were relatively favored 10:12:10 when they should be 8:16:8
                    // This used to be allele+secondIndex&2 and the &2 operated after the + so it was always 0 or 2
#ifdef DEBUG
                    from_second[allele+(secondIndex&2)] += 1;
                    from_second_second[allele + (secondIndex&2)] += 1; // Should encounter 0 50% of time and 1 50% of time and give 2 50% of time and 0 50% of time. Should be 25% for all
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
    }
    
#ifdef DEBUG
    from_second[1] += from_second[2];
    from_second[2] = from_second[3];
    
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
    result[0] = counts[0];
    result[1] = counts[1] + counts[2];
    result[2] = counts[3] + counts[4];
    return;
}

void * pthread_handler(void* args){
    struct threadinfo myinfo = *(struct threadinfo*)args;
    int thresh_aa = myinfo.thresh_aa;
    int thresh_ab = myinfo.thresh_ab;
    int thresh_bb = myinfo.thresh_bb;
    int num_generations = myinfo.num_generations;
    int next_members = myinfo.next_members;
    int *results = myinfo.results;
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

int main(int argc, char **argv){
    srandomdev(); // Seeds random() using information from /dev/random
    int num_organisms = 65536;
#ifdef DEBUG
    int num_generations = 5;
#else
#ifdef THREADED
    int num_generations = 10000;
#else
    int num_generations = 1000;
#endif
#endif
    printf("Beginning simulation of %d organisms for %d generations\n",num_organisms,num_generations);
    int initial_values[3];
    initialize_generation(num_organisms,initial_values);
    int thresh_aa = initial_values[0];
    int thresh_ab = thresh_aa + initial_values[1];
    int thresh_bb = thresh_ab + initial_values[2];
/*    int thresh_aa = 16000;
    int thresh_ab = 49536;
    int thresh_bb = 65536;*/
    int **results = malloc(num_generations*3*sizeof(int));
    int result[3] = {0,0,0};
#ifdef THREADED
    unsigned int *thread_results = malloc(num_generations*sizeof(int)*3);
    memset(thread_results, 0, num_generations*sizeof(int)*3); // Sometimes it has random pieces of data. It shouldn't and this is an easy way to fix that.
    int alldone = 0;
    num_organisms = (num_organisms<<2)>>2; // needs to be multiple of 4
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
        thresh_bb = thresh_ab + result[2]; // THESE WILL ALL NOT FUNCTION BECAUSE PROGRESS_GENERATION DOES += NOT = ON RESULT
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
    for (int i = 0; i < num_generations/100; i++){
        struct timeval start;
        struct timeval end;
        gettimeofday(&start,NULL);
#pragma clang loop unroll(full)
        for (int j = 0; j < 100; j++) {
            progress_generation(thresh_aa, thresh_ab, thresh_bb, num_organisms,result);
            thresh_aa = result[0];
            thresh_ab = thresh_aa + result[1];
            thresh_bb = thresh_ab + result[2];
            results[i*100 + j] = result;
        }
        gettimeofday(&end,NULL);
        printf("%ld microseconds\t",(1000000 * end.tv_sec + end.tv_usec) -  (1000000 * start.tv_sec + start.tv_usec));
        printf("aa: %d\tab:%d\tbb:%d\n",result[0],result[1],result[2]);
    }
#endif
#endif
#endif
    return 0;
}
