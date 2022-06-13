//Ingresar los resultados del parcial para los 20 alumnos de un curso y al finalizar informar el promedio.
Proceso P4E6
	Definir nota, suma Como Real
	Definir i Como Real
	Para i=1 Hasta 20 Con Paso 1 Hacer
		Escribir "ingrese la nota del parcial del alumno " i
		Leer nota
		Si nota<0 O nota>10
			Escribir "Nota invalida"
			Escribir "Reingrese la nota"
			Leer nota
		FinSi
		suma = suma + nota
	Fin Para
	Escribir "El promedio es: " suma/20
FinProceso
