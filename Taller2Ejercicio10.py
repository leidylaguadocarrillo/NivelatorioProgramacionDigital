import random

numeroSecreto = random.randint(1, 50)
intentos = 1

print("Adivina un numero entre 1 y 50, tines 5 oportunidades")

while(intentos <= 5):
    numeroUsuario = int(input("Adivina el numero secreto: "))
    if numeroUsuario < numeroSecreto:
        print("El numero secreto es mayor")
    else:
        if numeroUsuario == numeroSecreto:
            intentos = 5
            print("¡Felicidades! Adivinaste el numero")
        else:
            print("El numero secreto es menor")
    intentos = intentos + 1

print("Lo siento, se acabaron los intentos, perdiste. El numero secreto era: ", numeroSecreto)
