//Ingresar los resultados del parcial para los alumnos de un curso y al finalizar informar el promedio de notas. 
//Se desconoce la cantidad de notas a ingresar. El sistema le preguntará al usuario si quiere ingresar otro parcial o si ya terminó
Proceso P3E9
	Definir nota, cantNotas, sumaNotas Como Real
	Definir salida Como Logico
	
	Repetir
		Escribir "Ingrese una nota o ingrese 0 para salir"
		Leer nota
		Si nota>0 Y nota <= 10 Entonces
			sumaNotas = sumaNotas + nota
			cantNotas = cantNotas + 1
			Escribir "nota" nota "cantidad " cantNotas
		FinSi
	Mientras Que nota<>0
	
	Escribir "El promedio es: " sumaNotas/cantNotas
FinProceso
