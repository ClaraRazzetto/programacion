//Escribir un algoritmo que muestre un país y sus ciudades relacionadas. Los países y sus ciudades son:
// pais          ciudad 1      ciudad 2         ciudad 3
// Argentina     Buenos Aires  Rosario          Cordoba
// Colombia      Cali          Bogotá           Santa Marta
// Brasil        Brasilia      Río de Janeiro   San Pablo
Proceso P4E7
	Definir arreglo,pais Como Caracter
	Definir i, j Como Entero
	Dimension arreglo[3,4]
	
	arreglo[1,1]="Argentina"
	arreglo[1,2]="Buenos Aires"
	arreglo[1,3]="Rosario"
	arreglo[1,4]="Cordoba"
	
	arreglo[2,1]= "Colombia"
	arreglo[2,2]="Cali"
	arreglo[2,3]="Bogotá"
	arreglo[2,4]="Santa Marta"
	
	arreglo[3,1]= "Brasil"
	arreglo[3,2]= "Brasilia"
	arreglo[3,3]= "Río de Janeiro"
	arreglo[3,4]= "San Pablo"
	
	Escribir "Ingrese un país para mostrar sus ciudades " 
	Leer pais
	
	Repetir
		i = i + 1
		Si pais = arreglo[i,1] Entonces
			Para j=2 Hasta 4 Con Paso 1 Hacer
				Escribir arreglo[i,j]
			FinPara
		FinSi
	Mientras Que (pais <> arreglo[i,1]) Y i<3
FinProceso
