Algoritmo Ejercicio_14
	Definir numeroUsuario, contador, inicioSecuencia, sumaSecuencia Como Entero
	Escribir "Ingrese un número: "
	Leer numeroUsuario
	contador = 1
	inicioSecuencia = 0
	sumaSecuencia = 0
	
	Si numeroUsuario MOD 2 == 0 Entonces
		inicioSecuencia = numeroUsuario
	SiNo
		inicioSecuencia = numeroUsuario + 1
	Fin Si
	
	Mientras contador <= numeroUsuario Hacer
		inicioSecuencia = inicioSecuencia + 2
		sumaSecuencia = sumaSecuencia + inicioSecuencia
		Imprimir inicioSecuencia
		contador = contador + 1
	Fin Mientras
	
	Imprimir "La suma de los N primeros numeros pares es: ",sumaSecuencia
FinAlgoritmo
