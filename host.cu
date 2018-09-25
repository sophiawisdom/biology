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
#define THREADS_PER_BLOCK 128
#define TOTAL_THREADS (NUM_BLOCKS * THREADS_PER_BLOCK)
#define CUDA_CALL(x) do { if((x) != cudaSuccess) { \
    printf("Error at %s:%d\n",__FILE__,__LINE__); \
    return EXIT_FAILURE;}} while(0)

#include <device.cu> // setup and generate kernel.

// Benchmark depends on size, but ranges from ~1600 million matings/s (@100k organisms) to
// 26000 million matings/s (@16m organisms). Speed increases the more organisms there are primarily
// And the more generations it's running for secondarily.

void write_bytearray(void *array, int length, char* filename){
  int fd = open(filename,O_WRONLY | O_CREAT);
  int result = write(fd,array,length);
  close(fd);
  return;
}

void print_threadinfo(thread_info tinfo){
  printf("num_sims: %d\nthresh_aa: %d\nthresh_ab: %d\nthresh_bb: %d\nscaledown_factor: %d\n",
    tinfo.num_sims,tinfo.thresh_aa,tinfo.thresh_ab,tinfo.thresh_bb,tinfo.scaledown_factor);
}

long long * get_seeds(int num_seeds){
  long long *host_seeds = (long long *) malloc(num_seeds*sizeof(long long));
  int fd = open("/dev/urandom",O_RDONLY);
  read(fd,host_seeds,num_seeds*sizeof(long long));
  close(fd);
  return host_seeds;
}

int main(int argc, char **argv){

  #ifdef DEBUG
  int num_generations = 10;
 #else
  int num_generations = 10000;
  if (argc == 3){
  	num_generations = atoi(argv[1]);
  }
  #endif

  int num_organisms = 1024*1024;
  if (argc == 3) {
	  num_organisms = atoi(argv[2]);
  }

  if (__builtin_popcount(num_organisms) != 1){
  	printf("num_organisms must be a power of 2\n");
  	exit(EXIT_FAILURE);
  }

  printf("Running simulation for %d generations with %d organisms for %d total_threads\n",num_generations, num_organisms, TOTAL_THREADS);

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
  t_info.thresh_aa = num_organisms>>2;
  t_info.thresh_ab = (num_organisms>>2) * 3;
  t_info.thresh_bb = num_organisms;
  int scaledown = 0;
  for (int i = 32; i > 0; i--){
  	if (num_organisms == (1 << i)){
  		scaledown = (32-i);
  		break;
  	}
  }
  t_info.scaledown_factor = scaledown;
  t_info.results = device_results;

  int *overall_results = (int *) malloc(num_generations*3*sizeof(int));

  struct timeval start;
  struct timeval end;
  gettimeofday(&start,NULL);
  unsigned long long start_time = (start.tv_sec*1000000) + start.tv_usec;
  unsigned long long last_printed = start_time;


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
        printf("k = %08x, num_aa_short = %d, num_ab_short = %d, num_bb_short = %d, generation %d\n",k,num_aa_short,num_ab_short,num_bb_short,generation);
      }
      #endif

      num_aa += num_aa_short;
      num_ab += num_ab_short;
      num_bb += num_bb_short;
    }


    t_info.thresh_aa = num_aa;
    t_info.thresh_ab = num_aa + num_ab;
    int index = generation*3;
    overall_results[index] = num_aa;
    overall_results[index+1] = num_ab;
    overall_results[index+2] = num_bb;

    if (generation % 10000 == 0 && generation != 0){
      gettimeofday(&end, NULL);
      unsigned long long end_time = end.tv_sec*1000000 + end.tv_usec;

      if (end_time - last_printed >= (30*1000*1000)){
      	float since_start = (end_time-start_time)/1000000.0;
      	float since_printed = (end_time-last_printed)/1000000.0;
      	float ratio_done = generation/num_generations;
      	float time_left = since_printed/ratio_done;
      	printf("Currently on generation %d. It's been %f seconds. Projected to be %f seconds until done.\n", generation, since_start, since_printed, time_left);
      	last_printed = end_time;
      }
    }
  }

  int i = (num_generations-5)*3;

  printf("At end, num_aa = %d, num_ab = %d, num_bb = %d\n", overall_results[i], overall_results[i+1], overall_results[i+2]);

  gettimeofday(&end, NULL);
  unsigned long long end_time = (end.tv_sec*1000000) + end.tv_usec;

  float time_taken = (end_time-start_time)/1000000.0;

  unsigned long long matings = num_generations;
  matings = matings << (32-t_info.scaledown_factor);

  printf("Took %f seconds %llu million matings/s\n", time_taken, matings/(end_time-start_time));

  #ifdef DEBUG // 40694899
  printf("Freeing host memory\n");
  #endif
  free(host_seeds);
  free(host_results);
  free(overall_results);
  #ifdef DEBUG
  printf("Freed host memory\n");

  printf("Attempting to free device_results\n");
  #endif
  CUDA_CALL(cudaFree(device_results));
  #ifdef DEBUG
  printf("Freed device results\n");
  #endif
  CUDA_CALL(cudaFree(device_rand_state));
  #ifdef DEBUG
  printf("Freed device_rand_state\n");
  #endif
  CUDA_CALL(cudaFree(device_seeds));
  #ifdef DEBUG
  printf("Freed device_seeds\n");
  #endif
  return 0;
}
