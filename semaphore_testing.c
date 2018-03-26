#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <semaphore.h>

sem_t mutex;

struct threadinfo {
    int thresh_aa;
    int thresh_ab;
    int thresh_bb;
    int next_members; // number of members to generate on each pass
    int num_generations;
    int *results;
};

void * pthread_handler(void* args){
    // Args should consist as follows: int thresh_aa, int thresh_ab, int thresh_bb, int nextMembers, int **results, int *alldone
    struct threadinfo myinfo = *(struct threadinfo*)args;
    sem_wait(&mutex);
    printf("Got mutex\n");
    sem_post(&mutex);
    return args;
}

int main(){
    int *results = malloc(1000*sizeof(int)*4);
    struct threadinfo tinfo = {.thresh_aa = 18072, .thresh_ab = 51029, .thresh_bb = 65536, .results = results, .num_generations = 1000, .next_members = 24522};
    pthread_t thread;
    int tErr;
    printf("about to call pthread_create\n");
    tErr = pthread_create(&thread , NULL, pthread_handler, (void *)&tinfo);
    pthread_join(thread, NULL);
    printf("finished join\n");
    return 0;
}
