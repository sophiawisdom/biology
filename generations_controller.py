import subprocess
import threading
import random
import string
import os
from os.path import expanduser
import sys
import time
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation


def auto_plot(num_generations,num_organisms,fifoname=None):

	if fifoname == None:
		fifoname = ''.join([random.choice(string.ascii_letters) for a in range(10)])
	args = [os.getcwd() + "/bio",str(num_organisms),str(num_generations),fifoname]
	threading.Thread(target=subprocess.run,args=(args,)).start()

	num_frames = int(num_generations/100)
	print(f"Running for {num_frames} frames")
	results = [[np.nan]*num_frames,[np.nan]*num_frames,[np.nan]*num_frames] # [[aa1,aa2...],[ab],[bb]]


	def animate(i):
		nonlocal results
		print("Ran animate")

		result = file.readline()
		if result == "":
			return
		result = [int(a.split(":")[1])/num_organisms*100 for a in result.split("\t")]
		results[0][i//100] = result[0]
		results[1][i//100] = result[1]
		results[2][i//100] = result[2]
		print(f"{results}")

		aa_line.set_ydata(results[0])
		ab_line.set_ydata(results[1])
		bb_line.set_ydata(results[2])

		return (aa_line,ab_line,bb_line)

	fig, ax = plt.subplots()
	ax.set_xlim(0,num_generations)
	ax.set_ylim(0,100)
	aa_line, = ax.plot([a for a in range(0,num_generations,100)], [np.nan for a in range(num_frames)], \
		animated=True,label="aa")
	ab_line, = ax.plot([a for a in range(0,num_generations,100)], [np.nan for a in range(num_frames)], \
		animated=True,label="ab")
	bb_line, = ax.plot([a for a in range(0,num_generations,100)], [np.nan for a in range(num_frames)], \
		animated=True,label="bb")
	ax.legend()
	file = open(fifoname,'r')

	ani = FuncAnimation(fig, animate, frames=range(0,num_generations,100), interval=200)

	os.unlink(fifoname)

auto_plot(1000,65536)
