//Realizar un programa que permita cargar los datos de un cliente, Nombre, apellido, DNI. La 
//carga del DNI debe validarse a partir de una funci�n llamada ValidarDNI, dicha funci�n 
//recibir� como par�metro de entrada el dni ingresado y devolver� una variable del tipo l�gica 
//Verdadero/Falso. Nota: El DNI debe estar formado por n�meros y tener una longitud m�xima 
//de 8 caracteres y una longitud m�nima de 6 caracteres.

Proceso P42E4
	Definir nombre, apellido Como Caracter
	Definir dni Como Entero
	Escribir "Ingrese nombre y apellido"
	Leer nombre, apellido
	Repetir
		Escribir "Ingrese dni"
		Leer dni
	Hasta Que ValidadDNI(dni)
FinProceso

Funcion respuesta = ValidadDNI(dni)
	Definir respuesta Como Logico
	Si dni > 100000000 O dni < 1000000 Entonces
		respuesta = Falso
	Sino 
		respuesta = Verdadero
	FinSi
FinFuncion
