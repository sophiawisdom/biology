

int main(){
	int * seed_buffer = malloc(100000*sizeof(int));
	int fd = open("/dev/random",O_RDONLY);
	int size_read = read(fs,random_buffer,100000*sizeof(int));
	if (size_read < 100000*sizeof(int)){
		printf("Wanted to read %d bytes but only read %d bytes. Exiting.\n",100000*sizeof(int),size_read);
		exit(1);
	}

}