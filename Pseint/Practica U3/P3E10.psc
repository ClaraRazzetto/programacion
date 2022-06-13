Proceso P3E10
	
	Definir nota, suma Como Real
	Definir  aprobados, desaprobados Como Entero
	
	Repetir
		Escribir "Ingrese una nota o 0 para salir"
		Leer nota
		Si nota>0 Y nota <= 10 Entonces
			suma = suma + nota
			Si nota>0 Y nota<6 Entonces
				desaprobados = desaprobados + 1
			SiNo
				aprobados = aprobados + 1
			FinSi
		FinSi
	Hasta Que nota == 0 
	
	Escribir "El promedio es: " suma/(desaprobados+aprobados)
	Escribir "La cantidad de desaprobados es: " desaprobados
	Escribir "La cantidad de aprobados es: " aprobados
	
FinProceso

//Ingresar los resultados del parcial para los alumnos de un curso y al finalizar informar el promedio, 
//la cantidad de desaprobados y la cantidad de aprobados. Nota: Se 
//aprueba con 6 y se debe validar que la nota ingresada sea un número decimal entre 1 y 10