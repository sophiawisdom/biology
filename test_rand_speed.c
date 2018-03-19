#include <stdlib.h>
#include <sys/time.h>
#include <stdio.h>
#include <string.h>

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
        for (int i = 0; i < 10000; i++){
             for (int j = 0; j < 100; j++){
                random();
             }
        }
    }
    else {
        for (int i = 0; i < 10000; i++){
            for (int j = 0; j < 100; j++){
                rand();
            }
        }
    }
    gettimeofday(&end,NULL);
    unsigned long end_t = 1000000 * end.tv_sec + end.tv_usec;
    if (random_or_rand){
        printf("It took %ld microseconds to generate 1m random numbers using random()\n",end_t-start_t);
    }
    else {
        printf("It took %ld microseconds to generate 1m random numbers using rand()\n",end_t-start_t);
    }
    printf("This is equivalent to %ld bytes/microsecond\n",4000000/(end_t-start_t));
}
