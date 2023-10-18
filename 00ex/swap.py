### ASSIGNMENT ###

# 2. The swap function

# Write a function that swap the values of two input variables x and y (whatever the type). Try to do that also without a temporary variable

###########################################################################################

def swap(x, y):
    t = x
    x = y
    y = t
    return x, y

print(swap([4, 5, 'list'], "it"))

def swap2(x, y):
    x, y = y, x
    return x, y

print(swap2([4, 5, 'list'], "it"))