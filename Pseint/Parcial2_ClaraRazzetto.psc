Proceso parcial2
	Definir importe, valorProducto Como Real
	Definir cantProducto Como Entero
	
	Repetir //mientras que el importe sea distinto de cero repetir
		
		Escribir "Ingrese el monto del producto (0 para finalizar la carga)"
		Leer valorProducto
		
		Si valorProducto < 0 Entonces // aviso al usuario si ingreso un valor negativo distinto de cero
			Escribir "El valor del producto no puede ser negativo"
		SiNo
			Si valorProducto <> 0 //si es distinto de cero ingreso la cantidad de producto sino sale del bucle
				Repetir //valido que la cantidad sea mayor igual a cero
					Escribir "Ingrese la cantidad"
					Leer cantProducto
					Si cantProducto <= 0 Entonces //comunico al usuario en caso de un valor invalido
						Escribir "La cantidad debe ser mayor a cero"
					FinSi
				Mientras Que cantProducto <= 0
				importe = importe + (valorProducto * cantProducto) 
			FinSi
		FinSi
	Mientras Que valorProducto <> 0
	Escribir "Total " importe "$"
FinProceso
