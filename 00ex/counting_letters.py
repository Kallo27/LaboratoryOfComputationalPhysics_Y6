### ASSIGNMENT ###

# 4. Counting letters

# Write a program to calculate the number of times each character occurs in a given string *s*. Ignore differneces in capitalization

###########################################################################################

import string

s="Write a program that prints the numbers from 1 to 100. \
But for multiples of three print Mickey instead of the number and for the multiples of five print Mouse. \
For numbers which are multiples of both three and five print MickeyMouse"

alphabet = string.ascii_lowercase

s = s.lower()

for i in alphabet:
    print(i, s.count(i))