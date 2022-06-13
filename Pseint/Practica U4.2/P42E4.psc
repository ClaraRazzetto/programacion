//Realizar un programa que permita cargar los datos de un cliente, Nombre, apellido, DNI. La 
//carga del DNI debe validarse a partir de una función llamada ValidarDNI, dicha función 
//recibirá como parámetro de entrada el dni ingresado y devolverá una variable del tipo lógica 
//Verdadero/Falso. Nota: El DNI debe estar formado por números y tener una longitud máxima 
//de 8 caracteres y una longitud mínima de 6 caracteres.

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
