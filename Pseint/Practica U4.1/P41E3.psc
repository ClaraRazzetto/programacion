//Desarrollar un algoritmo que permita ingresar 5 datos numéricos en un arreglo y que luego los sume a todos y muestre el resultado 
//en pantalla
Proceso P4E3
	Definir num, suma Como Real
	Dimension num[5]
	suma = 0
	Definir i Como Entero
	Para i=1 Hasta 5 Con Paso 1 Hacer
		Escribir "Digite un numero"
		Leer num[i]
		suma = suma + num[i]
	FinPara
	Escribir "La suma de los valores ingresados es: " suma
FinProceso
