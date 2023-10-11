### ASSIGNMENT ###

# 1. The MickeyMouse problem

# a) Write a program that prints the numbers from 1 to 100. But for multiples of 3 print `Mickey` instead of the corresponding number   and for the multiples of 5 print `Mouse`. For numbers which are multiples of both three and five print `MickeyMouse`

# b) Put the result in a tuple and substitute `Mickey` with `Donald` and `Mouse` with `Duck`

###########################################################################################

b = "Mickey"
c = "Mouse"
pluto = []

for a in range(1, 101):
    pippo = ""
    
    if a % 3 == 0:
        pippo = pippo + b
        
    if a % 5 == 0:
        pippo = pippo + c
        
    if pippo == "":
        pippo = str(a)
        
    print(pippo)
    pluto.append(pippo)
 
giorgio = tuple(x.replace("Mickey", "Donald").replace("Mouse", "Duck") for x in pluto)   
print(giorgio)
