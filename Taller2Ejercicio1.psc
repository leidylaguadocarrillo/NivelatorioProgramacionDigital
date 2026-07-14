Funcion resultadoOctal <- binarioAOctal (binario)
	resultadoOctal = decimalAOctal(binarioADecimal(binario))
Fin Funcion

Funcion resultadoHexa <- binarioAHexa (binario)
	resultadoHexa = decimalAHexa(binarioADecimal(binario))
Fin Funcion

Funcion resultadoBinario <- octalABinario (octal)
	resultadoBinario = decimalABinario(octalADecimal(octal))
Fin Funcion

Funcion resultadoHexa <- octalAHexa (octal)
	resultadoHexa = decimalAHexa(octalADecimal(octal))
Fin Funcion

Funcion hexa <- decimalAHexa ( decimal )
	hexa = " "
	residuo = 1
	Mientras decimal>0 Hacer
		residuo = decimal MOD 16
		Si residuo == 0 Entonces
			hexa = "0" + hexa
		Fin Si
		Si residuo = 1 Entonces
			hexa = "1" + hexa
		Fin Si
		Si residuo == 2 Entonces
			hexa = "2" + hexa
		Fin Si
		Si residuo == 3 Entonces
			hexa = "3" + hexa
		Fin Si
		Si residuo == 4 Entonces
			hexa = "4" + hexa
		Fin Si
		Si residuo == 5 Entonces
			hexa = "5" + hexa
		Fin Si
		Si residuo == 6 Entonces
			hexa = "6" + hexa
		Fin Si
		Si residuo == 7 Entonces
			hexa = "7" + hexa
		Fin Si
		Si residuo == 8 Entonces
			hexa = "8" + hexa
		Fin Si
		Si residuo == 9 Entonces
			hexa = "9" + hexa
		Fin Si
		Si residuo == 10 Entonces
			hexa = "A" + hexa
		Fin Si
		Si residuo == 11 Entonces
			hexa = "B" + hexa
		Fin Si
		Si residuo == 12 Entonces
			hexa = "C" + hexa
		Fin Si
		Si residuo == 13 Entonces
			hexa = "D" + hexa
		Fin Si
		Si residuo == 14 Entonces
			hexa = "E" + hexa
		Fin Si
		Si residuo == 15 Entonces
			hexa = "F" + hexa
		Fin Si
		
		decimal = trunc(decimal/16)
		
	Fin Mientras
	
Fin Funcion

Funcion decimal <- octalADecimal(octal)
	decimal = 0
	potencia = 1
	digito = 1
	Mientras octal>0 Hacer
		digito = octal MOD 10
		decimal = decimal + digito * potencia
		potencia = potencia * 8
		octal = trunc(octal/10)
	Fin Mientras
Fin Funcion

Funcion decimal <- binarioADecimal (binario)
	decimal = 0
	potencia = 1
	digito = 1
	Mientras binario>0 Hacer
		digito = binario MOD 10
		decimal = decimal + digito * potencia
		potencia = potencia * 2
		binario = trunc(binario/10)
	Fin Mientras

Fin Funcion

Funcion octal <- decimalAOctal (decimal)
	octal = 0
	potencia = 1
	residuo = 1
	Mientras decimal>0 Hacer
		residuo = decimal MOD 8
		octal = octal + residuo * potencia
		potencia = potencia * 10
		decimal = trunc(decimal/8)
	Fin Mientras
Fin Funcion

Funcion binario <- decimalABinario ( decimal)
	binario = 0
	potencia = 1
	residuo = 1
	Mientras decimal > 0 Hacer
		residuo = decimal MOD 2
		binario = binario + residuo * potencia
		potencia = potencia * 10
		decimal = trunc(decimal/2)
	Fin Mientras
Fin Funcion


Algoritmo Ejercicio_1
	Definir opcionMenu Como Entero
	
	Imprimir "1.Decimal a octal"
	Imprimir "2.Decimal a binario"
	Imprimir "3.Decimal a hexa"
	Imprimir "4.Binario a decimal"
	Imprimir "5.Binario a octal"
	Imprimir "6.Binario a hexa"
	Imprimir "7.Octal a binario"
	Imprimir "8.Octal a decimal"
	Imprimir "9.Octal a hexa"
	
	Escribir "Ingresa la opción de la base que quieras convertir: "
	Leer opcionMenu
	
	Si opcionMenu == 1 Entonces
		Escribir "Ingrese el decimal: "
		Leer decimal
		Imprimir "El Octal es: ", decimalAOctal(decimal)
	Fin Si
	
	Si opcionMenu == 2 Entonces
		Escribir "Ingrese el decimal: "
		Leer decimal
		Imprimir "El Binario es: ", decimalABinario(decimal)
	Fin Si
	
	Si opcionMenu == 3 Entonces
		Escribir "Ingrese el decimal: "
		Leer decimal
		Imprimir "El Hexa es: ", decimalAHexa(decimal)
	Fin Si
	
	Si opcionMenu == 4 Entonces
		Escribir "Ingrese el binario: "
		Leer binario
		Imprimir "El Decimal es: ", binarioADecimal(binario)
	Fin Si
	
	Si opcionMenu == 5 Entonces
		Escribir "Ingrese el binario: "
		Leer binario
		Imprimir "El Octal es: ", binarioAOctal(binario)
	Fin Si
	
	Si opcionMenu == 6 Entonces
		Escribir "Ingrese el binario: "
		Leer binario
		Imprimir "El Hexa es: ", binarioAHexa(binario)
	Fin Si
	
	Si opcionMenu == 7 Entonces
		Escribir "Ingrese el Octal: "
		Leer octal
		Imprimir "El binario es: ", octalABinario(octal)
	Fin Si
	
	Si opcionMenu == 8 Entonces
		Escribir "Ingrese el Octal: "
		Leer octal
		Imprimir "El decimal es: ", octalADecimal(octal)
	Fin Si
	
	Si opcionMenu == 9 Entonces
		Escribir "Ingrese el Octal: "
		Leer octal
		Imprimir "El Hexa es: ", octalAHexa(octal)
	Fin Si
	
FinAlgoritmo
