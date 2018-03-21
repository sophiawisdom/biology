bio:
	clang -Ofast generations.c -o bio
debug:
	clang -Ofast generations.c -D DEBUG=true -o bio
speedtest:
	clang -Ofast generations.c -D SPEEDTEST=true -o bio
