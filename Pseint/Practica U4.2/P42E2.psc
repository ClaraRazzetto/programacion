//. Realizar un programa que le pida al usuario que ingrese dos números, luego llamar a una 
//función que calcule la suma de ambos y la devuelva al programa principal. Desde el programa 
//principal mostrar el resultado de la suma.

Proceso P42E2
	Definir num1, num2 Como Entero
	Escribir "Ingrese el primer número"
	Leer num1
	Escribir "Ingrese el segundo número"
	Leer num2
	Escribir "La suma de los números ingresados es: " suma(num1,num2)
FinProceso

Funcion resultado <- suma(num1,num2)
	Definir resultado Como Entero
	resultado=num1+num2
FinFuncion
