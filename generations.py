# bio_generations
import random
import math
import matplotlib.pyplot as plt
from IPython import embed
def get_organism():
    return [random.randint(0,1),random.randint(0,1)]
def mate(a,b):
    return [random.choice(a),random.choice(b)]
def generate_types(num_generations):
    a_a = []
    a_b = []
    b_b = []
    for generation in num_generations:
        a_a_num = 0
        a_b_num = 0
        b_b_num = 0
        for organism in generation:
            if organism == [0,0]:
                a_a_num += 1
            elif organism == [0,1] or organism == [1,0]:
                a_b_num += 1
            else:
                b_b_num += 1
        a_a.append(a_a_num)
        a_b.append(a_b_num)
        b_b.append(b_b_num)
    total = (a_a[0] + b_b[0] + a_b[0])/100
    a_a = [a/total for a in a_a]
    a_b = [a/total for a in a_b]
    b_b = [a/total for a in b_b]
    return a_a,a_b,b_b
def backplot(generations=None,others=[]):
    if generations:
        a_a,a_b,b_b = generate_types(generations)
    else:
        a_a,a_b,b_b = others
    line_first, = plt.plot(a_a,label='AA genome')
    line_second, = plt.plot(a_b,label='AB genome or BA genome')
    line_third, = plt.plot(b_b,label='BB genome')
    plt.legend([line_first,line_second,line_third],["AA genome","AB or BA genome","BB genome"])
def plot_generations(generations):
    backplot(generations)
    plt.show()
def savefig(generations,name):
    backplot(generations)
    plt.savefig(name)
def get_generations(num_individuals,num_generations):
    generations = []
    last_gen = [get_organism() for a in range(num_individuals)]
    while len(generations) < num_generations:
        newgen = [mate(random.choice(last_gen),random.choice(last_gen)) for a in range(num_individuals)]
        generations.append(newgen)
        last_gen = newgen
        if len(generations) % 1000 == 0:
            print("Currently at generation {0} out of {1}".format(len(generations),num_generations))
    return generations
