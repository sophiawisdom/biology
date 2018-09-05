#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdlib.h>
#include <curand.h>
#include <curand_kernel.h>
#include <math.h>
#include <stdio.h>
#include <assert.h>
#include <sys/time.h>
#define ITER 10000000
#define NUM_BLOCKS 32
#define THREADS_PER_BLOCK 32
#define TOTAL_THREADS (NUM_BLOCKS * THREADS_PER_BLOCK)
#define CUDA_CALL(x) do { if((x) != cudaSuccess) { \
    printf("Error at %s:%d\n",__FILE__,__LINE__); \
    return EXIT_FAILURE;}} while(0)

struct thread_info {
  int num_sims; // How many simulations a thread should be doing

  int thresh_aa;
  int thresh_ab;
  int thresh_bb; // implied to equal num_sims and be above 65536

  /* 0 -> thresh_aa -> thresh_ab -> thresh_bb
   *   aa           ab          bb
   * thresh_aa is aa, thresh_ab is ab, thresh_bb is bb, or it should be. I don't think this is yet
   * the case.
  */

  int scaledown_factor; // equal to 32 - (log(thresh_bb,2)). How much int should be scaled down

  int * results; // [num_aa, num_ab] with num_bb being implicitly total - (num_aa+num_ab)
  // Makes more sense in terms of limiting the number of memory accesses. Turns two memory acceses into 2
};
// Does it matter whether I pass a struct with arguments or series of arguments?

__global__ void setup_kernel(curandState *state, long long *seeds){

  int idx = threadIdx.x+blockIdx.x*THREADS_PER_BLOCK;
  long long seed = 1234;//seeds[idx];
  curand_init(seed, idx, 0, &state[idx]); // &state[idx] != state+idx 
}

__global__ void generate_kernel(curandState *my_curandstate, thread_info t_info){
  int idx = threadIdx.x+blockIdx.x*THREADS_PER_BLOCK;
  unsigned short num_aa = 0;
  unsigned short num_ab = 0;
  curandState localCurandState = my_curandstate[idx];
  thread_info local_tinfo = t_info; 
  // IDK if this is good practice; the idea is to load the thread info locally instead of getting it from the main source

  int num_one_parent = 0;
  for (int i = 0; i < (local_tinfo.num_sims>>5); i++){
    num_one_parent += __popc(curand(&localCurandState)); // 64 bit version would be somewhat better, but whatevs
  }

  int num_two_parents = local_tinfo.num_sims-num_one_parent;

  for (int i = 0; i < num_one_parent; i++){
    unsigned int rand_num = curand(&localCurandState) >> local_tinfo.scaledown_factor;

    if (rand_num < local_tinfo.thresh_aa){
      num_aa++;
    }

    else if (rand_num < local_tinfo.thresh_ab){
      num_ab++;
    }

  }

  for (int i = 0; i < num_two_parents; i++){
    unsigned int p1_index = curand(&localCurandState) >> local_tinfo.scaledown_factor;
    if (p1_index > local_tinfo.thresh_ab){
      unsigned int p2_index = curand(&localCurandState) >> local_tinfo.scaledown_factor;

      if (p2_index < local_tinfo.thresh_aa){
        num_ab++;
      }

      else if (p2_index < local_tinfo.thresh_ab) {

        if (p1_index&1 == 0){
          num_ab++;
        }

      }

    }

    else if (p1_index > local_tinfo.thresh_aa) {
      unsigned int p2_index = curand(&localCurandState) >>local_tinfo.scaledown_factor;

      if (p1_index&1){ // first b sequence

        if (p2_index < local_tinfo.thresh_aa){
          num_ab++;
        }

        if (p2_index < local_tinfo.thresh_ab){

          if (p2_index&0) {
            num_ab++;
          }

        }

      }

      else { // first a sequence

        if (p2_index > local_tinfo.thresh_ab){
          num_ab++;
        }

        else if (p2_index > local_tinfo.thresh_aa){

          if (p2_index&1) {
            num_ab++;
          }

          else {
            num_aa++;
          }
        }

        else {
          num_aa++;
        }
      }
    }

    else {
      unsigned int p2_index = curand(&localCurandState) >> local_tinfo.scaledown_factor;

      if (p2_index > local_tinfo.thresh_ab){
        num_ab++;
      }

      else if (p2_index > local_tinfo.thresh_aa){

        if (p2_index&1){
          num_ab++;
        }

        else {
          num_aa++;
        }

      }

      else {
        num_aa++;
      }

    }
  }

  int result = (int)(num_aa);
  result = result << 16;
  result += num_ab; // Try to make sure the compiler knows this is an int
  local_tinfo.results[idx] = result;
}

void write_bytearray(void *array, int length, char* filename){
  int fd = open(filename,O_WRONLY | O_CREAT);
  int result = write(fd,array,length);
  close(fd);
  return;
}

void print_threadinfo(thread_info tinfo){
  printf("num_sims: %d\nthresh_aa: %d\nthresh_ab: %d\nthresh_bb: %d\nscaledown_factor: %d\nresults: %d\n",
    tinfo.num_sims,tinfo.thresh_aa,tinfo.thresh_ab,tinfo.thresh_bb,tinfo.scaledown_factor,tinfo.results);
}

long long * get_seeds(int num_seeds){
  long long *host_seeds = (long long *) malloc(num_seeds*sizeof(long long));
  int fd = open("/dev/urandom",O_RDONLY);
  read(fd,host_seeds,num_seeds*sizeof(long long));
  close(fd);
  return host_seeds;
}

int main(){

  int num_generations = 10000;
  int num_organisms = 1024*1024;

  printf("Running simulation for %d total_threads\n",TOTAL_THREADS);

  long long * host_seeds = get_seeds(TOTAL_THREADS);
  long long * device_seeds;
  CUDA_CALL(cudaMalloc(&device_seeds,TOTAL_THREADS*sizeof(long long)));
  CUDA_CALL(cudaMemcpy(device_seeds, host_seeds, TOTAL_THREADS*sizeof(long long), cudaMemcpyHostToDevice));

  int * host_results = (int *) malloc(TOTAL_THREADS*sizeof(int));
  int * device_results;
  CUDA_CALL(cudaMalloc(&device_results, TOTAL_THREADS*sizeof(int)));
  CUDA_CALL(cudaMemset(device_results, 0, TOTAL_THREADS*sizeof(int)));

  curandState *device_rand_state;
  CUDA_CALL(cudaMalloc(&device_rand_state,TOTAL_THREADS*sizeof(curandState)));

  setup_kernel<<<NUM_BLOCKS,THREADS_PER_BLOCK>>> (device_rand_state, device_seeds);

  thread_info t_info;
  t_info.num_sims = (num_organisms/TOTAL_THREADS);
  t_info.thresh_aa = 262144;
  t_info.thresh_ab = 786432;
  t_info.thresh_bb = 1048576;
  t_info.scaledown_factor = 12;
  t_info.results = device_results;

  int *overall_results = (int *) malloc(num_generations*3);

  struct timeval start;
  struct timeval end;
  gettimeofday(&start,NULL);
  unsigned long long start_time = start.tv_sec*1000000 + start.tv_usec;

  for (int generation = 0; generation < num_generations; generation++){
    #ifdef DEBUG
    printf("Before running kernel for generation %d, tinfo looked like:\n",generation);
    print_threadinfo(t_info);
    #endif

    generate_kernel<<<NUM_BLOCKS,THREADS_PER_BLOCK>>> (device_rand_state, t_info);

    int num_aa = 0;
    int num_ab = 0;
    int num_bb = 0;

    CUDA_CALL(cudaMemcpy(host_results, device_results, TOTAL_THREADS*sizeof(int), cudaMemcpyDeviceToHost));
    // We don't have to worry about cpu/gpu synchronization because cudaMemcpy will run after generate_kernel

    for (int i = 0; i < TOTAL_THREADS; i++){
      int k = host_results[i];
      short num_aa_short = k >> 16; // upper 16 bits
      short num_ab_short = k & 65535; // lower 16 bits
      // More efficient methods of extraction that explicitly extract 16 bits in asm, but not super
      // important
      short num_bb_short = (t_info.num_sims - (num_aa_short+num_ab_short));
      #ifdef DEBUG
      if (i % 300 == 299) {
        printf("k = %d, num_aa_short = %d, num_ab_short = %d, generation %d\n",k,num_aa_short,num_ab_short,generation);
      }
      #endif
      num_aa += num_aa_short;
      num_ab += num_ab_short;
      num_bb += num_bb_short;
    }

    #ifdef DEBUG
    if (generation == 0){
      write_bytearray(host_results,TOTAL_THREADS*sizeof(int),"results");
    }
    #endif

    t_info.thresh_aa = num_aa;
    t_info.thresh_ab = num_aa + num_ab;
    int index = generation*3;
    overall_results[index] = num_aa;
    overall_results[index+1] = num_ab;
    overall_results[index+2] = num_bb;
    if (generation % 1000 == 0 && generation != 0){
      gettimeofday(&end, NULL);
      unsigned long long end_time = end.tv_sec*1000000 + end.tv_usec;
      printf("Results for generation %d are %d aa, %d ab and %d bb! Took %.3f seconds.\n",
        generation,num_aa,num_ab,num_bb,(end_time-start_time)/1000000.0);
    }
  }

  printf("Freeing host memory\n");
  free(host_seeds);
  free(host_results);
  free(overall_results);
  printf("Freed host memory\n");

  printf("About to free device memory, device_results\n");
  sleep(2);
  printf("Attempting to free device_results at location %p\n",(void *)device_results);
  printf("Indexed, device_results is %d",*device_results);
  CUDA_CALL(cudaFree(device_results));
  printf("Freed device results\n");
  sleep(1);
  CUDA_CALL(cudaFree(device_rand_state));
  printf("Freed device_rand_state\n");
  sleep(1);
  CUDA_CALL(cudaFree(device_seeds));
  printf("Freed device_seeds\n");
  return 0;
}
