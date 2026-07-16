def validacion (numeroUsuario,numeroAnterior):
	if numeroUsuario>numeroAnterior:
		return True
	else:
		return False
	
cantidadImpares = 0
numeroAnterior = 0
numeroUsuario = 0
entradaCiclo = True
primerNumero = True
	
while entradaCiclo == True:
	numeroUsuario = int(input("Ingresa un numero: "))

	if primerNumero == True:
		numeroAnterior = numeroUsuario
		if numeroUsuario % 2 != 0:
			cantidadImpares = cantidadImpares + 1
		primerNumero = False
	else:
		esValido = validacion (numeroUsuario,numeroAnterior)
	
		if esValido == True:
			if numeroUsuario % 2 != 0:
				cantidadImpares = cantidadImpares + 1
			numeroAnterior = numeroUsuario
		else:
			entradaCiclo = False
	
print("La cantidad de numeros impares es: ", cantidadImpares)