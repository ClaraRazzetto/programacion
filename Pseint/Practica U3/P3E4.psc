//Ingresar un n�mero e informar su factorial.
Proceso P3E4
	Definir num, i, factorial Como Entero
	Escribir "Ingrese un n�mero"
	Leer num
	factorial=1
	Para i=1 Hasta num Con Paso 1 Hacer
		Si num == 1 O num == 0 Entonces
			factorial=1
		Sino
			factorial=factorial*i
		FinSi
	Fin Para
	Escribir "factorial= " factorial
FinProceso
