Funcion resultadoInteresToTal <- InteresTotal (montoPrestamo,numeroDeMeses,interesMensual)
	interesMensual= interesMensual/100
	resultadoInteresToTal = montoPrestamo * numeroDeMeses * interesMensual
Fin Funcion

Algoritmo Ejercico_8 //El ejercicio usa el calculo del interés simple
	
	Definir montoPrestamo,numeroDeMeses,valorTotalAPagar Como Entero
	Definir interesMensual Como Real
	
	Escribir "Ingresa el monto del préstamo (capital): "
	Leer montoPrestamo
	Escribir "Ingresa el número de meses del préstamo: "
	Leer numeroDeMeses
	Escribir "Ingrese el interés mensual en porcentaje: "
	Leer interesMensual
	
	valorTotalAPagar = montoPrestamo + InteresTotal(montoPrestamo,numeroDeMeses,interesMensual)
	Imprimir "El valor total a pagar es: $", valorTotalAPagar
FinAlgoritmo
