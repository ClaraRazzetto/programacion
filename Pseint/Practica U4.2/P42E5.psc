//Realizar un programa que le pida al usuario que ingrese una lista de 10 alumnos y los resultados del examen final. Luego el programa llamará a una 
//función que calcula el promedio de notas, a otra función que calcula la mayor nota, y otra que calcula la menor nota. Luego el 
// sistema informará estos 3 valores al usuario.

Proceso P42E5
	Definir arreglo Como Real
	Definir i Como Entero
	Dimension arreglo[10]
	
	Para i=1 Hasta 10 Con Paso 1 Hacer
		Escribir "Ingrese la nota del alumno " i 
		Leer arreglo[i]
	Fin Para
	Calculos(arreglo)
FinProceso

SubProceso Calculos(arreglo)
	Definir suma, mayor, menor Como Real
	Definir i Como Entero
	
	mayor = arreglo[1]
	menor = arreglo [1]
	
	Para i=1 Hasta 10 Con Paso 1 Hacer
		suma = suma + arreglo[i]
		
		Si mayor< arreglo[i]
			mayor = arreglo [i]
		SiNo
			Si menor> arreglo[i]
				menor = arreglo [i]
			FinSi
		FinSi
		
	FinPara
	
	Escribir "El promedio es: " suma/10
	Escribir "La menor nota es: " menor 
	Escribir "La mayor nota es: " mayor
FinSubProceso
	