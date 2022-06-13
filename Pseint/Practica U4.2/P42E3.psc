// Realizar un programa que le pida al usuario ingresar los 3 lados de un triángulo e informar si 
//es equilátero, isósceles o escaleno. Ésto debe hacerse llamando a un subproceso que reciba 
//los lados como parámetros de entrada y muestre por pantalla el tipo de triángulo 

Proceso P42E3
	Definir l1,l2,l3 Como Real
	Escribir "Ingrese los 3 lados de un triángulo"
	Leer l1,l2,l3
	tipoTriangulo(l1,l2,l3)
FinProceso

SubProceso tipoTriangulo(l1,l2,l3)
	Si l1==l2 Y l2==l3 Entonces 
		Escribir "El triángulo es Equilatero"
	Sino 
		Si l1==l2 O l2==l3 Entonces 
			Escribir "El triángulo es Isósceles"
		SiNo
			Escribir "El triángulo es Escaleno"
		FinSi
	FinSi
FinSubProceso
	