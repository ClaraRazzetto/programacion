// Ingresar la fecha de nacimiento de una persona e informar la edad.
Proceso P4E5
	Definir edad,diaN,mesN,anioN,diaA,mesA,anioA Como Entero
	
	Escribir "Ingrese d�a de nacimiento"
	Leer diaN
	Escribir "Ingrese mes de nacimiento"
	Leer mesN
	Escribir "Ingrese anio de nacimiento"
	Leer anioN
	
	Escribir "Ingrese d�a actual"
	Leer diaA
	Escribir "Ingrese mes actual"
	Leer mesA
	Escribir "Ingrese anio actual"
	Leer anioA
	
	edad = anioA-anioN
	
	Si mesN > mesA Entonces
		edad = edad - 1
	Sino 
		Si mesN==mesA Entonces
			
			Si diaN > diaA Entonces
				edad = edad-1
			FinSi
			
			Si diaA == diaN Entonces
				Escribir "Feliz cumplea�os"
			FinSi
			
		FinSi
	FinSi
	
	Escribir "Tu edad es: " edad
FinProceso
