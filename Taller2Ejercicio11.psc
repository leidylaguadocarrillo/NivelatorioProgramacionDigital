Algoritmo Ejercicio_11
	Definir dado,vecesSale1, lanzamientos Como Entero
	vecesSale1 = 0
	lanzamientos = 1
	
	Mientras lanzamientos <= 50 Hacer
		dado =Aleatorio(1,6)
		Si dado == 1 Entonces
			vecesSale1 = vecesSale1 + 1
		Fin Si
		lanzamientos = lanzamientos + 1
	Fin Mientras
	
	Imprimir "El número de veces que salió el 1 fue: ",vecesSale1
FinAlgoritmo
