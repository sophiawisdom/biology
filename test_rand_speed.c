#include <stdlib.h>
#include <sys/time.h>
#include <stdio.h>
#include <x86intrin.h>
#include <string.h>
#include "fast_rand.h"

// This must be compiled with -Ofast because otherwise when you call FastRand it fetches the parameters from the struct each time

int main(int argc, char **argv){
    struct timeval start;
    struct timeval end;

    void * random_buffer = malloc(1000000);
    long long unsigned int * long_random_buffer = (long long unsigned int *) random_buffer;
    int * int_random_buffer = (int *) random_buffer;
    unsigned short n = 0; // overflows every 65536, so no problem.
    srandomdev();
    gettimeofday(&start,NULL);
    unsigned long start_t = 1000000 * start.tv_sec + start.tv_usec;

    for (int i = 0; i < 125000000; i++) {
        _rdrand64_step(long_random_buffer+n);
    }

    gettimeofday(&end,NULL);
    unsigned long end_t = 1000000 * end.tv_sec + end.tv_usec;
    printf("It took %ld microseconds to generate 1 GB using rdrand(). ",end_t-start_t);
    printf("This is equivalent to %ld bytes/microsecond\n",1000000000/(end_t-start_t));
    gettimeofday(&start,NULL);
    start_t = 1000000 * start.tv_sec + start.tv_usec;

    for (int i = 0; i < 250000000; i++) {
        int_random_buffer[n] = random();
        n += 1;
    }

    gettimeofday(&end,NULL);
    end_t = 1000000 * end.tv_sec + end.tv_usec;
    printf("It took %ld microseconds to generate 1 GB using random(). ",end_t-start_t);
    printf("This is equivalent to %ld bytes/microsecond\n",1000000000/(end_t-start_t));
    gettimeofday(&start,NULL);
    start_t = 1000000 * start.tv_sec + start.tv_usec;

    n = 0;
    fastrand f = InitFastRand();
    for (int i = 0; i < 62500000; i++){
        FastRand(&f);
        int_random_buffer[n] = f.res[0];
        n += 1;
        int_random_buffer[n] = f.res[1];
        n += 1;
        int_random_buffer[n] = f.res[2];
        n += 1;
        int_random_buffer[n] = f.res[3];
        n += 1;
    }
    free(random_buffer);
    gettimeofday(&end,NULL);
    end_t = 1000000 * end.tv_sec + end.tv_usec;
    printf("It took %ld microseconds to generate 1 GB random bytes using FastRand(). ",end_t-start_t);
    printf("This is equivalent to %ld bytes/microsecond\n",1000000000/(end_t-start_t));
    return 0;
}
