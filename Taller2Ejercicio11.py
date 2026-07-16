import random

vecesSale1 = 0
lanzaminetos = 1

while(lanzaminetos <= 50):
    dado = random.randint(1,6)
    if dado == 1:
        vecesSale1 = vecesSale1 + 1
    lanzaminetos = lanzaminetos + 1

print("El numero de veces que salio el 1 fue: ", vecesSale1)