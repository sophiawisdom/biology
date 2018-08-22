#include <x86intrin.h>
#include "fast_rand.h"
#include <unistd.h>

int main(){
	srandomdev();
	short* shorts = (short *) malloc(sizeof(short)*10000);
	fastrand rand_choice = InitFastRand();
	short * short_res = (short *) rand_choice.res;
	for (int k = 0; k < 1250; k++){	
		FastRand(&rand_choice);
		for (int i = 0; i < 8; i++){
			printf("%hu\t",short_res[i]);
		}
	}
}
