Algoritmo Vector_Ejemplo
	Escribir 'Dime la longitud del vector'
	leer x
	Dimension Vector[x]
	d <- 1
	Mientras d <= x Hacer
		Escribir 'Ingresa un numero para la posicion - - ->', d
		Leer Vector[d]
		suma <- Vector[d] + suma
		d <- d + 1
	FinMientras
	Escribir 'Los valores del vector son'
	r <- 1
	Mientras r <= x Hacer
		Escribir Vector[r], '   ' Sin Saltar
		r <- r + 1
	FinMientras
	Escribir 'Suma = ', suma
FinAlgoritmo
