numeroUsuario = 0
iterador = 1
sumaResiduoCero = 0

numeroUsuario = int(input("Ingresa un numero: "))

if numeroUsuario <= 1:
	print("El numero ", numeroUsuario, " no es primo")
else:
	while iterador <= numeroUsuario:
		if numeroUsuario % iterador == 0:
			sumaResiduoCero = sumaResiduoCero + 1
		iterador = iterador + 1
		
	if sumaResiduoCero == 2:
		print("El numero", numeroUsuario, "es primo")
	else:
		print ("El numero", numeroUsuario, "no es primo")
