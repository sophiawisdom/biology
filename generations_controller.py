import matplotlib
import subprocess

num_generations = sys.argv[1]
num_organisms = sys.argv[2]

child_process = subprocess.Popen(args=["/user/wisdomw18/biology/bio",num_generations,num_organisms],stdout=subprocess.PIPE)