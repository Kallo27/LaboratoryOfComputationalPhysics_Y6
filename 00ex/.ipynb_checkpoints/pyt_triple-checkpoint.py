### ASSIGNMENT ###

# 8. Nested list comprehension

# A Pythagorean triple is an integer solution to the Pythagorean theorem $a^2+b^2=c^2$. The first Pythagorean triple is (3,4,5). Find and put in a tuple all unique Pythagorean triples for the positive integers a, b and c less than 100.

###########################################################################################

c = tuple([a, b, (a**2 + b** 2)**(1/2)] for a in range(1, 100) for b in range (a, 100) if (a**2 + b** 2)**(1/2) < 100 if float.is_integer((a**2 + b** 2)**(1/2)))

print(c)