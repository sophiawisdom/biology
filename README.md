# Fast Hardy-Weinberg equilibrium simulation

This project contains two versions of hardy-weinstein equilibrium simulation:
  1. Relatively slow and easy to make python implementation, located in generations.py. Benchmarks are listed at the top of generations.py. The average is something like 150k 'matings' per second. The advantage to using this is that it is very flexible.
  2. Relatively fast and much more difficult to make C implementation, located in generations.c. Current benchmark is 172m 'matings' per second. However, it is less flexible due to being written in C. There is a wrapper located in generations_controller.py that currently doesn't work but in theory pipes output to the C output and graphs it live in matplotlib.

generations.c can be built by `make standard`. If you are starting this up for the first time, you should probably change the compiler it uses. Currently it links to the gcc location on my computer. I would highly recommend GCC as opposed to clang, because at least on my computer the benchmark provided by `make speedtest` was 850µs with clang and 600µs with gcc. This was before the decisions on whether to take both bits from one parent or take one bit from each parent was moved up to the front, so the difference is likely different now.
