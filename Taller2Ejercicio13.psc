Funcion resultadoValidacionAno <- validacionAno(ano)
	Si ano > 0 Entonces
		resultadoValidacionAno = Verdadero
	SiNo
		resultadoValidacionAno = Falso
	Fin Si
Fin Funcion

Funcion resultadoValidacionMes <- validacionMes(mes)
	Si mes >= 1 y mes <= 12 Entonces
		resultadoValidacionMes = Verdadero
	SiNo
		resultadoValidacionMes = Falso
	Fin Si
Fin Funcion

Funcion resultadoValidacionAnoBisiesto <- validacionAnoBisiesto(ano)
	Si (ano MOD 400 = 0) O (ano MOD 4 = 0 Y ano MOD 100 <> 0) Entonces
		resultadoValidacionAnoBisiesto = Verdadero
	SiNo
		resultadoValidacionAnoBisiesto = Falso
	Fin Si
Fin Funcion

Funcion resultadoValidacionMes31Dias <- validacionMes31Dias(mes)
	Si mes == 1 Entonces
		resultadoValidacionMes31Dias = Verdadero
	Fin Si
	Si mes == 3 Entonces
		resultadoValidacionMes31Dias = Verdadero
	Fin Si
	Si mes == 5 Entonces
		resultadoValidacionMes31Dias = Verdadero
	Fin Si
	Si mes == 7 Entonces
		resultadoValidacionMes31Dias = Verdadero
	Fin Si
	Si mes == 8 Entonces
		resultadoValidacionMes31Dias = Verdadero
	Fin Si
	Si mes == 10 Entonces
		resultadoValidacionMes31Dias = Verdadero
	Fin Si
	Si mes == 12 Entonces
		resultadoValidacionMes31Dias = Verdadero
	Fin Si
Fin Funcion

Funcion resultadoValidacionMes30Dias <- validacionMes30Dias(mes)
	Si mes == 4 Entonces
		resultadoValidacionMes30Dias = Verdadero
	Fin Si
	Si mes == 6 Entonces
		resultadoValidacionMes30Dias = Verdadero
	Fin Si
	Si mes == 9 Entonces
		resultadoValidacionMes30Dias = Verdadero
	Fin Si
	Si mes == 11 Entonces
		resultadoValidacionMes30Dias = Verdadero
	Fin Si
Fin Funcion

Funcion resultadoNombreMes <- NombreMes (mes)
	Si validacionMes(mes) = Verdadero Entonces
		Si mes == 1 Entonces
			resultadoNombreMes = "Enero"
		Fin Si
		Si mes == 2 Entonces
			resultadoNombreMes = "Febrero"
		Fin Si
		Si mes == 3 Entonces
			resultadoNombreMes = "Marzo"
		Fin Si
		Si mes == 4 Entonces
			resultadoNombreMes = "Abril"
		Fin Si
		Si mes == 5 Entonces
			resultadoNombreMes = "Mayo"
		Fin Si
		Si mes == 6 Entonces
			resultadoNombreMes = "Junio"
		Fin Si
		Si mes == 7 Entonces
			resultadoNombreMes = "Julio"
		Fin Si
		Si mes == 8 Entonces
			resultadoNombreMes = "Agosto"
		Fin Si
		Si mes == 9 Entonces
			resultadoNombreMes = "Septiembre"
		Fin Si
		Si mes == 10 Entonces
			resultadoNombreMes = "Octubre"
		Fin Si
		Si mes == 11 Entonces
			resultadoNombreMes = "Noviembre"
		Fin Si
		Si mes == 12 Entonces
			resultadoNombreMes = "Diciembre"
		Fin Si
	SiNo
		Imprimir "Error: mes invalido"
	Fin Si
Fin Funcion


Algoritmo Ejercicio_13
	Definir dia,mes,ano Como Entero
	Escribir "Ingresa un dia: "
	Leer dia 
	Escribir "Ingresa un mes: "
	Leer mes
	Escribir "Ingresa un año: "
	Leer año
	
	Si validacionAno(ano) = Verdadero Entonces
		Si validacionMes(mes) = Verdadero Entonces
			Si validacionMes31Dias(mes) = Verdadero Entonces
				Si dia >= 1 y dia <= 31 Entonces
					Imprimir "La fecha ingresada es: ", dia, " de ", NombreMes(mes), " del " ,ano
				SiNo
					Imprimir "Error: dia inválido"
				Fin Si
			SiNo
				Si validacionMes30Dias(mes) = Verdadero Entonces
					Si dia >= 1 y dia <= 30 Entonces
						Imprimir "La fecha ingresada es: ", dia, " de ", NombreMes(mes), " del " ,ano
					SiNo
						Imprimir "Error: dia inválido"
					Fin Si
				SiNo
					Si validacionAnoBisiesto(ano) = Verdadero Entonces
						Si dia >= 1 y dia <= 29 Entonces
							Imprimir "La fecha ingresada es: ", dia, " de ", NombreMes(mes), " del " ,ano
						SiNo
							Imprimir "Error: dia inválido"
						Fin Si
					SiNo
						Si dia >= 1 y dia <= 28 Entonces
							Imprimir "La fecha ingresada es: ", dia, " de ", NombreMes(mes), " del " ,ano
						SiNo
							Imprimir "Error: dia inválido"
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		SiNo
			Imprimir "Error: mes inválido"
		Fin Si
	SiNo
		Imprimir "Error: año inválido"
	Fin Si
FinAlgoritmo
