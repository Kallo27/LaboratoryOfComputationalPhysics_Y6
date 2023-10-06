### ASSIGNMENT ###

# 7. Cubes

# Create a list of the cubes of x for x in *[0, 10]* using:

# a) a for loop
# b) a list comprehension

###########################################################################################

pluto = []

for x in range(11):
    pluto.append(x**3)

print(pluto)

pippo = [x**3 for x in range(11)]

print(pippo)
