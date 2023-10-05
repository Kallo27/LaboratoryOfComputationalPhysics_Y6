### ASSIGNMENT ###

# 3. Computing the distance

# Write a function that calculates and returns the euclidean distance between two points *u* and *v*, where *u* and *v* are both 2-tuples *(x,y)*. For example, if *u=(3,0)* and *v=(0,4)*, the function should return 5

###########################################################################################

import numpy as np

def distance(u = (), v = ()):
    if len(u) == len(v) == 2:
        return np.sqrt((u[0] - v[0])**2 + (u[1] - v[1])**2)
    else: 
        print("Not valid input")
        
print(distance((0, 3), (4, 0)))