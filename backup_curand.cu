#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <curand.h>
#include <curand_kernel.h>
#include <math.h>
#include <stdio.h>
#include <assert.h>
#define ITER 10000000
#define NUM_BLOCKS 32
#define THREADS_PER_BLOCK 32
#define TOTAL_THREADS NUM_BLOCKS * THREADS_PER_BLOCK
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
}
// Does it matter whether I pass a struct with arguments or series of arguments?

__global__ void setup_kernel(curandState *state, long long *seeds){

  int idx = threadIdx.x+blockIdx.x*THREADS_PER_BLOCK;
  long long seed = 1234;//seeds[idx];
  curand_init(seed, idx, 0, &state[idx]); // &state[idx] != state+idx 
}

__global__ void generate_kernel(curandState *my_curandstate, thread_info t_info){
  int idx = threadIdx.x+blockIdx.x*THREADS_PER_BLOCK;
  short num_aa = 0;
  short num_ab = 0;
  short num_bb = 0;
  curandState localCurandState = my_curandstate[idx];
  threadinfo local_tinfo = t_info; // IDK if this is good practice; the idea is to load the thread info locally instead of getting it from the main source

  int num_one_parent = 0;
  for (int i = 0; i < (local_tinfo.num_sims>>5); i++){
    num_one_parent += __popc(curand(&localCurandState)); // 64 bit version would be somewhat better, but whatevs
  }

  int num_two_parents = local_tinfo.num_sims-num_one_parent;

  for (int i = 0; i < num_one_parent; i++){
    unsigned int rand_num = curand(&localCurandState) >> local_tinfo.scaledown_factor;

    if (rand_num < local_tinfo.thresh_aa){
      num_aa += 1;
    }

    else if (rand_num < local_tinfo.thresh_ab){
      num_ab += 1;
    }

  }

  for (int i = 0; i < num_two_parents; i++){
    unsigned int p1_index = curand(&localCurandState) >> local_tinfo.scaledown_factor;
    char allele = 0;
    if (p1_index > local_tinfo.thresh_ab){
      unsigned int p2_index = curand(&localCurandState) >> local_tinfo.scaledown_factor;

      if (p2_index < local_tinfo.thresh_aa){
        num_ab += 1;
      }

      else if (p2_index < local_tinfo.thresh_ab) {

        if (p1_index&1 == 0){
          num_ab += 1;
        }

      }

    }

    else if (p1_index > local_tinfo.thresh_aa) {
      unsigned int p2_index = curand(&localCurandState) >>local_tinfo.scaledown_factor;

      if (p1_index&1){ // first b sequence

        if (p2_index < local_tinfo.thresh_aa){
          num_ab += 1;
        }

        if (p2_index < local_tinfo.thresh_ab){

          if (p2_index&0) {
            num_ab += 1;
          }

        }

      }

      else { // first a sequence

        if (p2_index > local_tinfo.thresh_ab){
          num_ab += 1;
        }

        else if (p2_index > local_tinfo.thresh_aa){

          if (p2_index&1) {
            num_ab += 1;
          }

          else {
            num_aa += 1;
          }
        }

        else {
          num_aa += 1;
        }
      }
    }

    else {
      unsigned int p2_index = curand(&localCurandState) >> local_tinfo.scaledown_factor;

      if (p2_index > local_tinfo.thresh_ab){
        num_ab += 1;
      }

      else if (p2_index > local_tinfo.thresh_aa){

        if (p2_index&1){
          num_ab += 1;
        }

        else {
          num_aa += 1;
        }

      }

      else {
        num_aa += 1;
      }

    }
  }

  int result = num_aa << 16 + num_ab; // Try to make sure the compiler knows this is an int
  thread_info.results[idx] = result;
}

int main(){
  
}


int main(){
  printf("Total number of threads: %d. Allocating rand state memory\n",TOTAL_THREADS);

  curandState *d_state;
  CUDA_CALL(cudaMalloc(&d_state, sizeof(curandState)));
  printf("Allocated random state memory, reading host seeds\n")

  long long *host_seeds = (long long *) malloc(TOTAL_THREADS*sizeof(long long));
  int fd = open("/dev/urandom",O_RDONLY);
  read(fd,host_seeds,TOTAL_THREADS*sizeof(long long));
  close(fd);
  printf("Finished reading host seeds, copying to device\n");

  long long *device_seeds;
  CUDA_CALL(cudaMalloc(&device_seeds, TOTAL_THREADS*sizeof(long long)));
  CUDA_CALL(cudaMemcpy(device_seeds, host_seeds, TOTAL_THREADS*sizeof(long long), cudaMemcpyHostToDevice));
  printf("Running setup kernel\n");

  setup_kernel<<<NUM_BLOCKS,THREADS_PER_BLOCK>>>(d_state, device_seeds);
  printf("Finished setup_kernel, setting up device_results on GPU\n");

  unsigned int *device_results;
  CUDA_CALL(cudaMalloc(&device_results, TOTAL_THREADS*sizeof(int)));
  CUDA_CALLcudaMemset(device_results, 0, TOTAL_THREADS*sizeof(int));
  unsigned int *host_results = (unsigned int *)malloc(TOTAL_THREADS*sizeof(int));
  printf("Finished device and host results setup, sending kernel now\n");

  generate_kernel<<<NUM_BLOCKS,THREADS_PER_BLOCK>>>(d_state, device_results);
  printf("Finished sending kernel, synchronizing now.\n");

  cudaDeviceSynchronize();
  printf("Finished synchronizing, tallying now.\n");

  cudaMemcpy(host_results, device_results, TOTAL_THREADS*sizeof(int), cudaMemcpyDeviceToHost);

  unsigned long long sum = 0;
  for (int i = 0; i < TOTAL_THREADS; i++){
    sum += host_results[i];
  }
  printf("Sum of %d threads random numbers is %llu. Average is %llu\n",TOTAL_THREADS,sum,sum>>10);

  cudaFree(&device_seeds);
  cudaFree(&d_state);
}
