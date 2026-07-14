Algoritmo Ejercicio_3
	Definir numeroUsuario, iterador, sumaResiduoCero Como Entero
	
	Escribir "Ingresa un numero: "
	Leer numeroUsuario
	
	Si numeroUsuario <= 1 Entonces
		Escribir "El numero ", numeroUsuario, " no es primo"
	SiNo
		iterador = 1
		sumaResiduoCero = 0
		
		Mientras iterador <= numeroUsuario Hacer
			Si numeroUsuario MOD iterador == 0 Entonces
				sumaResiduoCero = sumaResiduoCero + 1
			Fin Si
			iterador = iterador + 1
		Fin Mientras
		
		Si sumaResiduoCero == 2 Entonces
			Escribir "El numero ", numeroUsuario, " es primo"
		SiNo
			Escribir "El numero ", numeroUsuario, " no es primo"
		Fin Si
		
	Fin Si
	
	
	
FinAlgoritmo
