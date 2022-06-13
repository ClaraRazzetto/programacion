// Realizar un programa que permita almacenar números reales en una matriz de orden 4×3, cuatro filas y tres columnas. Además, 
// calcular e imprimir la suma de cada uno de los números ingresados.

Proceso P4E8
	Definir arreglo, suma Como Real
	Definir i,j, fila, columna Como Entero
	fila = 4
	columna = 3
	Dimension arreglo[fila,columna]
	
	Escribir "Ingrese un número real"
	Para i=1 Hasta fila Con Paso 1 Hacer
		Para j=1 Hasta columna Con Paso 1 Hacer
			Leer arreglo[i,j]
			suma = suma + arreglo [i,j]
		Fin Para
	Fin Para
	
	Escribir " La suma de los valores ingresados es: " suma
FinProceso

