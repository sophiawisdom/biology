bio:
	clang -Ofast generations.c -msse4.2 -o bio
debug:
	clang -Ofast generations.c -msse4.2 -D DEBUG=true -o bio
speedtest:
	clang -Ofast generations.c -msse4.2 -D SPEEDTEST=true -o bio
threaded:
	clang -Ofast generations.c -msse4.2 -D THREADED=true -o bio
threaded_debug:
	clang -Ofast generations.c -msse4.2 -D THREADED=true -D DEBUG=true -o bio
