Algoritmo asteriscos4_Ejercicio_12
	
	Definir escaleraAsteriscos, filasEscalera, numeroColumnasEscalera Como Entero
	Definir columnasEscalera Como Caracter
	Escribir "Ingresa un número: "
	Leer escaleraAsteriscos
	filasEscalera = 1
	columnasEscalera = "*"
	numeroColumnasEscalera = 1
	
	Mientras filasEscalera <= escaleraAsteriscos Hacer
		numeroColumnasEscalera = filasEscalera
		Mientras numeroColumnasEscalera <> 0  Hacer
			Imprimir "*" Sin Saltar
			numeroColumnasEscalera = numeroColumnasEscalera - 1
		Fin Mientras
		Imprimir " "
		filasEscalera = filasEscalera + 1
	Fin Mientras
	
FinAlgoritmo
