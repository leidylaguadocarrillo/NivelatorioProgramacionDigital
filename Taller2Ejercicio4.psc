Funcion resultadoMCD <- MCD (a,b)
	Si a < b Entonces
		auxiliar = a
		a = b
		b = auxiliar
	Fin Si
	residuo = a mod b
	
	Mientras residuo > 0 Hacer
		auxiliar = b
		b = residuo
		a = auxiliar
		residuo = a MOD b
	Fin Mientras
	resultadoMCD = b
Fin Funcion

Algoritmo Ejercico_4
	
	Definir acumuladoMCD, calculoMCD, numeroUsuario Como Entero
	Definir primerNumero,entradaCiclo, hayNumeros Como Logico
	acumuladoMCD = 0
	primerNumero = Verdadero
	entradaCiclo = Verdadero
	hayNumeros = Falso
	
	Mientras entradaCiclo = Verdadero Hacer
		Escribir "Ingresa un número: "
		Leer numeroUsuario
		
		Si numeroUsuario > 0 Entonces
			Si primerNumero = Verdadero Entonces
				acumuladoMCD = numeroUsuario
				primerNumero = Falso
			SiNo
				calculoMCD = MCD(acumuladoMCD,numeroUsuario)
				acumuladoMCD = calculoMCD
			Fin Si
		hayNumeros = Verdadero
		SiNo
			entradaCiclo = Falso 
		Fin Si
	Fin Mientras
	
	Si hayNumeros = verdadero Entonces
		Imprimir "EL MCD de los numeros ingresados antes del numero invalido es: ",acumuladoMCD
	SiNo
		Imprimir "no se ingresaron números válidos"
	Fin Si
	
FinAlgoritmo
