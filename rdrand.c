#include <stdio.h>
#include <x86intrin.h>

int main() {
    unsigned int rand32;
    _rdrand32_step(&rand32);
    printf("rand32 is equal to %u\n",rand32);
}
