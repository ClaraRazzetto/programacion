//Escribir un algoritmo que permita ingresar 10 valores numéricos en un arreglo y que como resultado devuelva el mayor de todos
//los valores ingresados.
Proceso Ejercicio4
	
	Definir arreglo, i, mayor Como Entero
	Dimension arreglo[10]
	
	Para i=1 hasta 10 con paso 1
		Escribir "Digite un número"
		Leer arreglo[i]
	FinPara
	
	mayor = arreglo[1]
	
	Para i=2 hasta 10 con paso 1
		si mayor < arreglo[i] Entonces
			mayor = arreglo [i]
		FinSi
	FinPara
	
	Escribir "El mayor valor en el arreglo es:" mayor
	
FinProceso
