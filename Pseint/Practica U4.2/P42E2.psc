//. Realizar un programa que le pida al usuario que ingrese dos n�meros, luego llamar a una 
//funci�n que calcule la suma de ambos y la devuelva al programa principal. Desde el programa 
//principal mostrar el resultado de la suma.

Proceso P42E2
	Definir num1, num2 Como Entero
	Escribir "Ingrese el primer n�mero"
	Leer num1
	Escribir "Ingrese el segundo n�mero"
	Leer num2
	Escribir "La suma de los n�meros ingresados es: " suma(num1,num2)
FinProceso

Funcion resultado <- suma(num1,num2)
	Definir resultado Como Entero
	resultado=num1+num2
FinFuncion
