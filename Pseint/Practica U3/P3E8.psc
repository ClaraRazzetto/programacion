Proceso P3E8
	Definir a1,a2,a3 Como Real
	
	Repetir
		Escribir "Ingresar 2 lados de un tr�angulo teniendo en cuenta que los n�meros deben ser positivos menores a 180 y su suma menor a 180"
		Leer a1, a2
	Mientras Que a1<0 O a2<0 O a1>180 O a2>180 O a1+a2>180
	
	a3= 180-(a1+a2)
	
	Si a1==90 O a2==90 O a3==90 Entonces
		Escribir "El tri�ngulo es rect�ngulo"
	SiNo
		Si (a1<90 Y a2<90 Y a3<90) Entonces
			Escribir "El tri�ngulo es acut�ngulo"
		Sino 
			Escribir "El tri�ngulo es obtus�ngulo"
		FinSi
	FinSi
	
FinProceso

