#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <errno.h>
#include <string.h>

//#define DEBUG true

/*
 * Each organism is going to be represented as a char. We could be more efficient - slightly so at least - by putting 4 organisms in each char. However, I believe this would be computationally
 * inefficient, because you would have to do a lot of ORs to get each individual organism. Perhaps if memory bandwidth is the limiting factor this would be useful.
 * The L2 cache is 256KB. Perhaps we could try to store everything in L2 cache.
 
 * Wow so I thought initially I would have to get all my stuff from /dev/random, so I was limited to 10 bytes/microsecond. Then I remebered the other rand functions, so I thought I could get
 * use those, and it turns out rand() would have given me 360 bytes / microsecond, 1.5 orders of magnitude faster. Then random() is twice as fast as that - it gives me 755 bytes/microsecond. Wow!
 * Doing the math, it seems that random() returns in something like 6.87 cycles on average, which is incredibly fast.
 */

int * initialize_generation(int number){ // 14 milliseconds faster on generating 1.6 million organisms lol. 224 organisms / microsecond is good
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
    
    printf("Took %ld microseconds to generate new generation with %d aa, %d ab, and %d bb\n",(1000000 * end.tv_sec + end.tv_usec) -  (1000000 * start.tv_sec + start.tv_usec),num_aa,num_ab,num_bb);
    
    int gen[3] = {num_aa,num_ab,num_bb};
    return gen;
}

int * progress_generation(int thresh_aa, int thresh_ab, int thresh_bb, int nextMembers){
    
    // 0 | thresh_aa | thresh_ab | end = thresh_bb
#ifdef DEBUG
    printf("Thresholds: %d %d %d\t",thresh_aa,thresh_ab,thresh_bb);
    printf("AA has size: %d. AB has size %d. BB has size %d\n",thresh_aa,thresh_ab-thresh_aa,thresh_bb-thresh_ab);
    
    int from_first[4] = {0,0,0,0};
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
    
    int counts[4] = {0,0,0,0};
    
    // What if you store all the values in a long long? You should be able to keep that in a single register so it would be faster. Each value could only go up to 65536
    
    // I should look up inline functions
    // The main logic in this loop should be inline
    
    
    // What if instead of current approach I have array [num_aa, num_ab, num_ba, num_bb] and said array[allele] = 1 so that I avoid an if statement? And then I add num_ab and num_ba together
    if (thresh_bb == 65536){
        for (int i = 0; i < nextMembers/15; i++){
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
                    if (firstIndex < thresh_aa){
#ifdef DEBUG
                        from_first[0] += 1;
#endif
                        counts[0] += 1;
                    }
                    
                    else if (firstIndex < thresh_ab){
#ifdef DEBUG
                        from_first[1] += 1;
#endif
                        counts[1] += 1;
                    }
                    
                    else {
#ifdef DEBUG
                        from_first[3] += 1;
#endif
                        counts[3] += 1;
                    }
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
        for (int j = 0; j < nextMembers-(nextMembers/15 * 15); j++){ // This most definitely needs to be unrolled
            unsigned int indexEntropy = random() << 1; // This only produces 31 usable bytes, not 32. I have chosen to sacrifice the least significant bit.
            char choice = choiceEntropy & 3;
            choiceEntropy >>= 2;
            unsigned short firstIndex = indexEntropy >> 16; // Get 16 upper bits instead of lower 15 b/c we use firstIndex more
            
            if (choice == 0 || choice == 3){ // Both bits from one parent, doesn't matter which
#ifdef DEBUG
                num_first += 1;
#endif
                if (firstIndex < thresh_aa){
#ifdef DEBUG
                    from_first[0] += 1;
#endif
                    counts[0] += 1;
                }
                
                else if (firstIndex < thresh_ab){
#ifdef DEBUG
                    from_first[1] += 1;
#endif
                    counts[1] += 1;
                }
                
                else {
#ifdef DEBUG
                    from_first[3] += 1;
#endif
                    counts[3] += 1;
                }
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
    from_first[1] += from_first[2];
    from_first[2] = from_first[3];
    
    from_second[1] += from_second[2];
    from_second[2] = from_second[3];
    
    gettimeofday(&end,NULL);
    printf("Took %ld microseconds to progress generation\n",(1000000 * end.tv_sec + end.tv_usec) -  (1000000 * start.tv_sec + start.tv_usec));
    
    printf("From first aa: %d from second %d. From first ab: %d from second: %d. From first bb: %d from second %d\n",from_first[0],from_second[0],from_first[1],from_second[1],from_first[2],from_second[2]);
    printf("First was chosen %d times. Second was chosen %d times\n",num_first,num_second);
    printf("From second started with 0 %d times and 1 %d times\n",second_outputs[0],second_outputs[1]);
    printf("From second first: %d %d %d %d\n",from_second_first[0],from_second_first[1],from_second_first[2],from_second_first[3]);
    printf("From second second: %d %d %d %d\n",from_second_second[0],from_second_second[1],from_second_second[2],from_second_second[3]);
    printf("From second third: %d %d %d %d\n",from_second_third[0],from_second_third[1],from_second_third[2],from_second_third[3]);
#endif
    /*
    char *filename = malloc(31);
    int length = sprintf(filename,"shortIndexes_%d_%d_%d",counts[0],counts[1],counts[2]);
    printf("%s\t%d\n",filename,length);
    filename[30] = 0;
    int fd = open(filename,O_CREAT | O_WRONLY);
    if (fd == -1){
        printf("File creation Error: %s\n",strerror(errno));
    }
    
    if (write(fd,secondIndexes,num_second*sizeof(short)) == -1){
        printf("Write error: %s\n",strerror(errno));
    }
    close(fd);*/
    
    return counts;
}

int main(int argc, char **argv){
    /*if (argc < 3){
        printf("Need two parameters: <num_organisms> and <num_generations>\n");
        return 1;
    }
    printf("%s\n",argv[1]);
    int num_organisms = atoi(argv[1]);
    int num_generations = atoi(argv[2]);*/
    srandomdev(); // Seeds random() using information from /dev/random
    int num_organisms = 65536;
#ifdef DEBUG
    int num_generations = 5;
#else
    int num_generations = 1000;
#endif
    printf("Beginning simulation of %d organisms for %d generations\n",num_organisms,num_generations);
/*    int *i_g = initialize_generation(num_organisms);
    int thresh_aa = i_g[0];
    int thresh_ab = thresh_aa + i_g[1];
    int thresh_bb = thresh_ab + i_g[2];*/
    int thresh_aa = 16000;
    int thresh_ab = 49536;
    int thresh_bb = 65536;
    int **results = malloc(num_generations*3*sizeof(int));
    int* result;
#ifdef DEBUG
    for (int i = 0; i < num_generations; i++){
        result = progress_generation(thresh_aa, thresh_ab, thresh_bb, num_organisms);
        printf("0: %d 1: %d 2: %d 3: %d\n",result[0],result[1],result[2],result[3]);
        result[1] += result[2];
        result[2] = result[3];
        printf("aa: %d ab: %d bb: %d\n",result[0],result[1],result[2]);
        thresh_aa = result[0];
        thresh_ab = thresh_aa + result[1];
        thresh_bb = thresh_ab + result[2];
        results[i] = result;
    }
#else
    for (int i = 0; i < num_generations/100; i++){
        struct timeval start;
        struct timeval end;
        gettimeofday(&start,NULL);
#pragma clang loop unroll(full)
        for (int j = 0; j < 100; j++) {
            result = progress_generation(thresh_aa,thresh_ab,thresh_bb,num_organisms);
            result[1] += result[2];
            result[2] = result[3]; // This would've led to results[2] changing, not result[2] changing. Compiler warning helped me.
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
    return 0;
}
