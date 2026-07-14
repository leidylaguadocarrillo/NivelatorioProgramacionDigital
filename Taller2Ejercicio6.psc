Algoritmo Ejercicio6
	Definir numeroUsuario, factorPrimo Como Entero
	Definir numeroImprimir Como Caracter
	factorPrimo = 2
	numeroImprimir = ""
	Escribir "Ingrese un numero: "
	Leer numeroUsuario
	Imprimir "La descomposición en factores primos del numero ",numeroUsuario, " es: " Sin Saltar

	Mientras numeroUsuario > 1 Hacer
		Si numeroUsuario MOD factorPrimo == 0 Entonces
			numeroUsuario = numeroUsuario/factorPrimo
				si numeroUsuario == 1 Entonces
					Escribir factorPrimo
				SiNo
					Escribir factorPrimo," x " Sin Saltar
				Fin Si
		SiNo
			factorPrimo = factorPrimo + 1
		Fin Si
	FinMientras
	
	Si numeroUsuario < 1 Entonces
		Imprimir "Número inválido. Ingrese un número mayor que 1"
	Fin Si
	
FinAlgoritmo
