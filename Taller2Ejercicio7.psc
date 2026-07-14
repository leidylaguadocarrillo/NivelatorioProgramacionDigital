Funcion resultadoFactorial <- calculoFactorial (numeroUsuario)
	resultadoFactorial = 1
	iterador = 1
	Si numeroUsuario == 1 O numeroUsuario == 0 Entonces
		resultadoFactorial = 1
	SiNo
		Mientras iterador <= numeroUsuario Hacer
			resultadoFactorial = resultadoFactorial * iterador
			iterador = iterador + 1
		Fin Mientras
	Fin Si
Fin Funcion

Algoritmo Ejercico_7

	Definir factorial, n, r ,permutacion, combinacion, numeroUsuario1, resta, numeroUsuario2 Como Entero
	Definir isPrimerNumero , isSegundoNumero,isValidoNumeros Como Logico
	isPrimerNumero = Verdadero	
	isSegundoNumero = Verdadero
	noEsValidoNumeros = Verdadero 
	
	Mientras noEsValidoNumeros = Verdadero Hacer
		Mientras isPrimerNumero = Verdadero Hacer
			Escribir "Ingresa el primer número: "
			Leer numeroUsuario1
			Si  numeroUsuario1 < 0 Entonces
				Escribir "Número inválido. Intente nuevamente"
			SiNo
				isPrimerNumero = falso 
			Fin Si
		Fin Mientras
		
		Mientras isSegundoNumero = Verdadero Hacer
			Escribir "Ingresa el segundo número: "
			Leer numeroUsuario2
			Si  numeroUsuario2 < 0 Entonces
				Escribir "Número inválido. Intente nuevamente"
			SiNo
				isSegundoNumero = falso 
			Fin Si
		Fin Mientras
		
		Si numeroUsuario1 >= numeroUsuario2 Entonces
			noEsValidoNumeros = Falso
		SiNo
			isPrimerNumero = Verdadero
			isSegundoNumero =  Verdadero
			Escribir "El primer número debe ser mayor o igual que el segundo."
		Fin Si
	Fin Mientras
	
	n = numeroUsuario1 //El primer número es n (el total de elementos).
	r = numeroUsuario2 //El segundo número es r (los elementos que quieres escoger).
	resta = numeroUsuario1 - numeroUsuario2 //(n-r)
	
	permutacion = calculoFactorial(n)/ calculoFactorial(resta) //Formula P(n,r) = n!/(n-r)!
	
	combinacion = calculoFactorial(n)/(calculoFactorial(r) * calculoFactorial(resta)) //Formula P(n,r) = n!/r! (n-r)!
	
	Escribir "P(", numeroUsuario1, ",", numeroUsuario2, ") = ", permutacion
	Escribir "C(", numeroUsuario1, ",", numeroUsuario2, ") = ", combinacion

FinAlgoritmo 
