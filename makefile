bio:
	/usr/local/cellar/gcc/8.2.0/bin/c++-8 -Ofast generations.c -msse4.2 -o bio
debug:
	/usr/local/cellar/gcc/8.2.0/bin/c++-8 -Ofast generations.c -msse4.2 -D DEBUG=true -o bio
speedtest:
	/usr/local/cellar/gcc/8.2.0/bin/c++-8 -Ofast generations.c -msse4.2 -D SPEEDTEST=true -o bio
unoptimized_speedtest:
	/usr/local/cellar/gcc/8.2.0/bin/c++-8 -O0 generations.c -msse4.2 -D SPEEDTEST=true -o bio
speeddebug:
	/usr/local/cellar/gcc/8.2.0/bin/c++-8 -Ofast generations.c -msse4.2 -D SPEEDTEST=true -g -o bio
threaded:
	/usr/local/cellar/gcc/8.2.0/bin/c++-8 -Ofast generations.c -msse4.2 -D THREADED=true -o bio
threaded_debug:
	/usr/local/cellar/gcc/8.2.0/bin/c++-8 -Ofast generations.c -msse4.2 -D THREADED=true -D DEBUG=true -o bio
rand_test:
	/usr/local/cellar/gcc/8.2.0/bin/c++-8 -Ofast -msse4.2 -mrdrnd test_rand_speed.c -o test_rand_speed
