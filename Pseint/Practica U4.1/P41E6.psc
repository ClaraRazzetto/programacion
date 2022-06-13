//Realice un algoritmo que lea N elementos y que imprima el número que se repite más veces dentro del arreglo.
Proceso P4E6
	Definir arreglo,i, j, mayor,n, cantMasRepetido Como Entero

	Escribir "Ingrese la cantidad de elementos"
	Leer n
	Dimension arreglo[n,2] 
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese un valor"
		Leer arreglo[i,1]
	Fin Para
	
	cantMasRepetido = 1
	
	Para i=1 Hasta n-1 con paso 1 Hacer
		Para j=i+1 hasta n con paso 1 Hacer
			Si arreglo[i,1]=arreglo[j,1] Entonces
				arreglo[i,2] = arreglo[i,2] + 1
			FinSi
			Si cantMasRepetido<arreglo[i,2]
				cantMasRepetido=arreglo[i,2]
			FinSi
		FinPara
	FinPara
	
	Escribir "Los siguientes números son los que másse repiten en una cantidad total de " cantMasRepetido " veces: "
	Para i=1 Hasta n Con Paso 1 Hacer
		Si cantMasRepetido=arreglo[i,2] Entonces
			Escribir arreglo[i,1]
		FinSi
	FinPara
	
FinProceso
