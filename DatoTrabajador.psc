Algoritmo DatoTrabajador
	Definir nombre, direccion, puesto Como Caracter
	Definir sueldo, dias, horaex Como Real
	Definir pagodia, pagohora, pagohoraex, pagapordias, sueldobruto Como Real
	Definir LISR, IMSS, sueldoLISR, sueldoIMSS, cuota, totalneto, descuento Como Real
	// Pedir todos los datos
	Escribir 'Ingrese su nombre'
	Leer nombre
	Escribir 'Ingrese su domicilio'
	Leer direccion
	Escribir 'Ingrese su puesto'
	Leer puesto
	Escribir 'Ingrese su sueldo semanal'
	Leer sueldo
	Escribir 'Ingrese sus dias trabajados'
	Leer dias
	si dias > 0 y dias < 8 Entonces
		Escribir 'Ingrese sus horas extras trabajadas'
		leer horaex
		// Imprimir Datos personales
		Escribir '    ===> Ficha de pagos <==='
		Escribir 'Nombre: ', nombre
		Escribir 'Direccion: ', direccion
		Escribir 'Puesto: ', puesto
		Escribir 'Sueldo semanal: $', sueldo
		Escribir 'Dias laborados: ', dias
		Escribir 'Horas extras: ', horaex, 'hrs'
		// Hacer operaciones
		// Calculo de pagos por dia y por hora
		pagodia <- sueldo / 5
		pagohora <- pagodia / 8
		// Pago de horas extras
		si horaex <= 8 Entonces
			pagohoraex <- pagohora * 2
		SiNo
			pagohoraex <- pagohora * 3
		FinSi
		Escribir '  ===> Pagos totales <==='
		Escribir 'Pago total de Horas Extras: $', pagohoraex
		// Pago por dias trabajados
		pagapordias <- dias * pagodia
		Escribir 'Sueldo por dia: $', pagapordias
		// Sueldo bruto
		sueldobruto <- pagohoraex + pagapordias
		Escribir 'Sueldo bruto: $', sueldobruto
		// Calculo de impuestos
		// LISR
		si sueldobruto <= 3000 Entonces
			LISR <- sueldobruto * 0.05
		SiNo
			LISR <- sueldobruto * 0.06
		FinSi
		// IMSS
		si sueldobruto <= 3500 Entonces
			IMSS <- sueldobruto * 0.03
		SiNo
			IMSS <- sueldobruto * 0.04
		FinSi
		// Cuota total
		cuota <- sueldobruto * 0.03
		// Imprimir descuentos
		Escribir '  ===> Descuentos <==='
		Escribir 'Descuento por LISR: $', LISR
		Escribir 'Descuento por IMSS: $', IMSS
		Escribir 'Descuento de la Cuota: $', cuota
		descuento <- LISR + IMSS + cuota
		Escribir 'Descuento total: $', descuento
		// Imprimir el total neto
		Escribir '  ===> Total <==='
		totalneto <- sueldobruto - descuento
		Escribir 'Total neto: $', totalneto
	SiNo
		Escribir 'Numero de dias invalido.'
	FinSi
FinAlgoritmo
