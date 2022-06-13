// Realizar un programa que le pida al usuario ingresar los 3 lados de un tri�ngulo e informar si 
//es equil�tero, is�sceles o escaleno. �sto debe hacerse llamando a un subproceso que reciba 
//los lados como par�metros de entrada y muestre por pantalla el tipo de tri�ngulo 

Proceso P42E3
	Definir l1,l2,l3 Como Real
	Escribir "Ingrese los 3 lados de un tri�ngulo"
	Leer l1,l2,l3
	tipoTriangulo(l1,l2,l3)
FinProceso

SubProceso tipoTriangulo(l1,l2,l3)
	Si l1==l2 Y l2==l3 Entonces 
		Escribir "El tri�ngulo es Equilatero"
	Sino 
		Si l1==l2 O l2==l3 Entonces 
			Escribir "El tri�ngulo es Is�sceles"
		SiNo
			Escribir "El tri�ngulo es Escaleno"
		FinSi
	FinSi
FinSubProceso
	