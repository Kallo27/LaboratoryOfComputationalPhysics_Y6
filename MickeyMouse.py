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
