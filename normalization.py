### ASSIGNMENT ###

# 9. Normalization

# Write a function that takes a tuple of numbers and returns it with the entries normalized to one

###########################################################################################

def normalize(x = tuple()):
    y = list(x)
    norm = (sum(i**2 for i in y))**(1/2)
    
    for i in range(0, len(y)):
        y[i] = y[i]/norm

    return tuple(y)

print(normalize((1, 0, 1, 0, 0, 0, 0)))