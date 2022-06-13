//Realice un algoritmo que lea en un arreglo las marcas obtenidas por 10 corredores en una carrera e imprimir cuántos tienen una
//marca mayor, cuántos tienen una marca menor que el promedio y el promedio.
Proceso Ejercicio5
	Definir arreglo, suma, cantidad, mayor, menor,i Como Entero
	Definir promedio Como Real
	Dimension arreglo[10]
	
	arreglo[1]=9
	arreglo[2]=10
	arreglo[3]=8
	arreglo[4]=7
	arreglo[5]=10
	arreglo[6]=9
	arreglo[7]=1
	arreglo[8]=1
	arreglo[9]=4
	arreglo[10]=3
	
	Para i=1 hasta 10 Con Paso 1
		suma = suma + arreglo[i]
		cantidad = cantidad + 1
	FinPara
	
	promedio = suma/cantidad 
	Para i=1 hasta 10 con paso 1
		si arreglo[i] > promedio Entonces
			mayor = mayor+1
		SiNo
			si arreglo[i] < promedio Entonces
				menor = menor + 1
			FinSi
			
		FinSi
	FinPara
	
	Escribir "El promedio es:" promedio 
	Escribir "La cantidad de jugadores que tienen marca menor al promedio es:" menor
	Escribir "La cantidad de jugadores que tienen marca mayor al promedio es:" mayor
FinProceso
