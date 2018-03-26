#include <stdlib.h>
#include <stdio.h>

int main(int argc, char **argv){
    if (argc < 2){
        printf("Need num_bytes\n");
    }
    int num_bytes = atoi(argv[1]);
    printf("Reading %d bytes from malloc\n",num_bytes);
    unsigned char* result = malloc(num_bytes);
    int sum = 0;
    for (int i = 0; i < num_bytes; i++){
        sum += result[i];
    }
    printf("Sum of malloced memory was %d\n",sum);
    return 0;
}
