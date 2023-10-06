### ASSIGNMENT ###

# 6. Combination of functions

# Write two functions - one that returns the square of a number, and one that returns the cube. Now write a third function that returns the number raised to the 6th power using the two previous functions.

###########################################################################################

def square(x):
    return x**2

def cube(y):
    return y**3

def sixth_pow(z):
    return square(cube(z))

print(sixth_pow(2))