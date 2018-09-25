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

__global__ void setup_kernel(curandState *state, long long *seeds) {
  int idx = threadIdx.x+blockIdx.x*THREADS_PER_BLOCK;
  long long seed = seeds[idx];
  curand_init(seed, idx, 0, &state[idx]); // &state[idx] != state+idx 
}

__global__ void generate_kernel(curandState *curandstate, thread_info t_info){
  int idx = threadIdx.x+blockIdx.x*THREADS_PER_BLOCK;
  curandState localCurandState = curandstate[idx];

  unsigned short num_aa = 0;
  unsigned short num_ab = 0;
  // num_bb is implicit and equal to (tinfo.num_sims-(num_aa+num_ab))
  thread_info local_tinfo = t_info;
  // IDK if this is good practice; the idea is to load the thread info locally instead of getting it from the main source

  int num_one_parent = 0;
  for (int i = 0; i < (local_tinfo.num_sims>>5); i++){
  	int rand_int = curand(&localCurandState);
    num_one_parent += __popc(rand_int); // 64 bit version would be somewhat better, but whatevs
  }

  int num_two_parents = local_tinfo.num_sims - num_one_parent;

//  t_info.results[idx] = num_one_parent;
//  curandstate[idx] = localCurandState;

//  local_tinfo.results[idx] = curand(&localCurandState) >> 16;
//  return;

  for (int i = 0; i < num_one_parent; i++) {
    unsigned int rand_num = curand(&localCurandState) >> local_tinfo.scaledown_factor;

    if (rand_num < local_tinfo.thresh_aa){
      num_aa++;
    }

    else if (rand_num < local_tinfo.thresh_ab){
      num_ab++;
    }

    // Implict else num_bb++;

  }

  for (int i = 0; i < num_two_parents; i++){
    unsigned int p1_index = curand(&localCurandState) >> local_tinfo.scaledown_factor;

    if (p1_index > local_tinfo.thresh_ab) {
    	// First bit b
      unsigned int p2_index = curand(&localCurandState) >> local_tinfo.scaledown_factor;

      if (p2_index < local_tinfo.thresh_aa) {
        num_ab++;
      }

      else if (p2_index < local_tinfo.thresh_ab) {

        if ((p2_index&1) == 0) {
          num_ab++;
        }

        // else {num_bb++}
      }

      // else {num_bb++}

    }

    else if (p1_index > local_tinfo.thresh_aa) {
      unsigned int p2_index = curand(&localCurandState) >> local_tinfo.scaledown_factor;

      if ((p1_index&1) == 1){ // First bit B, same as above.

        if (p2_index < local_tinfo.thresh_aa){
          num_ab++;
        }

        else if (p2_index < local_tinfo.thresh_ab){

          if ((p2_index&1) == 0) { // Second bit 0
            num_ab++;
          }

          // num_bb++
        }

        // num_bb++

      }

      else { // First bit a

        if (p2_index > local_tinfo.thresh_ab) { // Second bit B
          num_ab++;
        }

        else if (p2_index > local_tinfo.thresh_aa){ // second bit AB

          if ((p2_index&1) == 1) { // Second bit B
            num_ab++;
          }

          else { // Second bit A
            num_aa++;
          }

        }

        else { // Second bit A
          num_aa++;
        }
      }
    }

    else { // First bit A
      unsigned int p2_index = curand(&localCurandState) >> local_tinfo.scaledown_factor;

      if (p2_index > local_tinfo.thresh_ab){
        num_ab++;
      }

      else if (p2_index > local_tinfo.thresh_aa){

        if ((p2_index&1) == 1){
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

  curandstate[idx] = localCurandState;

  int result = (int)(num_aa);
  result = result << 16;
  result += num_ab; // Try to make sure the compiler knows this is an int
  local_tinfo.results[idx] = result;
}