#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

struct threadinfo {
    int thresh_aa;
    int thresh_ab;
    int thresh_bb;
    int nextMembers; // number of members to generate on each pass
    int **results;
    int *alldone;
};

void * pthread_handler(void* args){
    // Args should consist as follows: int thresh_aa, int thresh_ab, int thresh_bb, int nextMembers, int **results, int *alldone
    struct threadinfo myinfo = *(struct threadinfo*)args;
    printf("thresholds: aa: %d ab: %d bb: %d\n",myinfo.thresh_aa,myinfo.thresh_ab,myinfo.thresh_bb);
    printf("Generating %d members per generation\n",myinfo.nextMembers);
    printf("Results is %p and alldone is %p\n",myinfo.results,myinfo.alldone);
    sleep(2);
    return (void *)&myinfo;
}

int main(){
    int **results = malloc(1000*sizeof(int)*4);
    int *alldone = malloc(4*sizeof(int));
    struct threadinfo tinfo = {.thresh_aa = 18072, .thresh_ab = 51029, .thresh_bb = 65536, .results = results, .alldone = alldone, .nextMembers = 24522};
    pthread_t thread;
    int tErr;
    printf("about to call pthread_create\n");
    tErr = pthread_create(&thread , NULL, pthread_handler, (void *)&tinfo);
    pthread_join(thread, NULL);
    printf("finished join\n");
    return 0;
}
