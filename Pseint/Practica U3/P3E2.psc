//2. Ingresar los lados de un tri�ngulo e informar si es equil�tero 3=, is�sceles 2= o escaleno.

Proceso P3E2
	Definir l1,l2,l3 Como Entero
	Escribir "Ingrese el primer lado de un triangulo"
	Leer l1
	Escribir "Ingrese el segundo lado de un triangulo"
	Leer l2
	Escribir "Ingrese el tercer lado de un triangulo"
	Leer l3
	
	Si(l1==l2 Y l2==l3) Entonces
		Escribir "El triangulo es equil�tero"
	SiNo
		si (l1==l2 O l1==l3 O l2==l3) Entonces
			Escribir "El triangulo es is�sceles"
		Sino 
			Escribir "El triangulo es escaleno"
		FinSi
	FinSi
FinProceso
