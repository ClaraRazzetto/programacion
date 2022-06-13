//Realizar un programa que llame a un subproceso que pida al usuario ingresar el nombre, el 
//apellido y la edad de una persona, luego llamar a otro subproceso que muestre por pantalla 
//los datos de la persona.
	
Proceso P42E1
	Definir nombre, apellido Como Caracter
	Definir edad Como Entero
	ingresarDatos(nombre, apellido, edad)
	mostrarPorPantalla(nombre, apellido, edad)
FinProceso

SubProceso ingresarDatos(nombre Por Referencia, apellido Por Referencia, edad Por Referencia)
	Escribir "Ingrese nombre"
	Leer nombre
	Escribir "Ingrese apellido"
	Leer apellido
	Escribir "Ingrese edad"
	Leer edad
FinSubProceso

SubProceso mostrarPorPantalla(nombre, apellido, edad)
	Escribir "Nombre:" nombre 
	Escribir "Apellido:" apellido
	Escribir "Edad: " edad
FinSubProceso
	