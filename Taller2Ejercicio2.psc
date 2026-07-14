Funcion resultado <- validacion (numeroUsuario,numeroAnterior)
	Si numeroUsuario > numeroAnterior Entonces
		resultado = Verdadero
	SiNo
		resultado = Falso
	FinSi
	
Fin Funcion

Algoritmo Ejercicio_2
	Definir cantidadImpares, numeroUsuario, numeroAnterior Como Entero
	Definir entradaCiclo, esValido, primerNumero Como Logico
	cantidadImpares = 0
	numeroUsuario = 0
	numeroAnterior = 0
	entradaCiclo = Verdadero
	primerNumero = Verdadero
	
	Mientras entradaCiclo = Verdadero Hacer
		Escribir "Ingresa un número: "
		Leer numeroUsuario
		
		Si primerNumero = Verdadero Entonces
			numeroAnterior = numeroUsuario
			Si numeroUsuario MOD 2 <> 0 Entonces
				cantidadImpares = cantidadImpares + 1
			Fin Si
            primerNumero = Falso
		SiNo
			esValido = validacion (numeroUsuario,numeroAnterior)
			Si esValido = Verdadero Entonces
				Si numeroUsuario MOD 2 <> 0 Entonces
					cantidadImpares = cantidadImpares + 1
				Fin Si
				numeroAnterior = numeroUsuario
			SiNo
				entradaCiclo = Falso 
			Fin Si
		Fin Si
	Fin Mientras
	Imprimir "La cantidad de números impares es: ", cantidadImpares
FinAlgoritmo
