#include <stdlib.h>
#include <sys/time.h>
#include <stdio.h>
#include <x86intrin.h>
#include <string.h>
#include "fast_rand.h"

// This must be compiled with -Ofast because otherwise when you call FastRand it fetches the parameters from the struct each time

int main(int argc, char **argv){
    char random_or_rand = 0;
    if (strncmp(argv[1],"random",6) == 0){
        printf("Using random()\n");
        random_or_rand = 1;
    }
    else {
        printf("Using rand()\n");
    }
    struct timeval start;
    struct timeval end;
    gettimeofday(&start,NULL);
    unsigned long start_t = 1000000 * start.tv_sec + start.tv_usec;  
    sranddev(); // Seed fast random using slow random
    if (random_or_rand == 1) {
        int results[65536]; // 2^20
        unsigned short n = 0;
        for (int i = 0; i < 78125; i++){
#pragma clang loop unroll(full)
             for (int j = 0; j < 128; j++){
                results[n] = random();
                n += 1;
             }
        }
    }
    else {
        int results[65536]; // 2^19 b/c long is 2x int
        unsigned short n = 0;
        fastrand f = InitFastRand();
        for (int i = 0; i < 78125; i++){
#pragma clang loop unroll(full)
            for (int j = 0; j < 32; j++) {
                FastRand(&f);
                results[n] = f.res[0];
                n += 1;
                results[n] = f.res[1];
                n += 1;
                results[n] = f.res[2];
                n += 1;
                results[n] = f.res[3];
                n += 1;
            }
        }
    }
    gettimeofday(&end,NULL);
    unsigned long end_t = 1000000 * end.tv_sec + end.tv_usec;
    if (random_or_rand){
        printf("It took %ld microseconds to generate 10m random numbers using random()\n",end_t-start_t);
    }
    else {
        printf("It took %ld microseconds to generate 10m random numbers using FastRand()\n",end_t-start_t);
    }
    printf("This is equivalent to %ld bytes/microsecond\n",40000000/(end_t-start_t));
}
