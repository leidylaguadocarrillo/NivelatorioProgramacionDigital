Algoritmo Ejercicio_10
	
	Definir numeroSecreto,numeroUsuario,intentos Como Entero
	numeroSecreto = Aleatorio(1,50)
	intentos = 1
	
	Imprimir  "Adivina un número entre 1 y 50, tienes cinco oportunidades"
	
		Mientras intentos <= 5 Hacer
			Escribir "Adivina el número secreto: "
			Leer numeroUsuario
			Si numeroUsuario < numeroSecreto Entonces
				Imprimir "El número secreto es mayor"
			SiNo
				Si numeroUsuario == numeroSecreto Entonces
					intentos = 5
					Imprimir "¡Felicidades! Adivinaste el número"
				SiNo
					Imprimir "El número secreto es menor"
				Fin Si
			Fin Si
			intentos = intentos + 1
		Fin Mientras
	
	Imprimir "Lo siento, se acabarón los intentos, perdiste. El numero secreto era: ",numeroSecreto
FinAlgoritmo
