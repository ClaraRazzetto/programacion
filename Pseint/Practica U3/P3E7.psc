//Ingresar 5 números enteros e informar el mayor y el menor. Nota: Los números ingresados no deben ser negativos.
Proceso P3E7
	Definir num,mayor, menor, i Como Entero
	
	Para i=1 Hasta 5 Con Paso 1 Hacer //uso para porque se la cantidad de iteraciones
		Repetir //uso repetir xq se debe ejecutar al menos una vez y evalua después de ingresar el num si es o no <0
			Escribir "Ingrese un número"
			Leer num
		Mientras Que num<0
		
		Si i=1 Entonces //pongo el primer valor ingresado en mayor y menor para comparar el resto de los valores con ese
			mayor = num
			menor = num
		sino
			si num > mayor Entonces //comparo mayor
				mayor=num
			SiNo
				si num < menor Entonces //comparo menor xq no pide menor igual
					menor = num
				FinSi
			FinSi
		FinSi
	FinPara
	
	Escribir "El mayor numero es : " mayor
	Escribir "El menor numero es : " menor
	
FinProceso
