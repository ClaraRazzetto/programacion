//Escribir un algoritmo que muestre un pa�s y sus ciudades relacionadas. Los pa�ses y sus ciudades son:
// pais          ciudad 1      ciudad 2         ciudad 3
// Argentina     Buenos Aires  Rosario          Cordoba
// Colombia      Cali          Bogot�           Santa Marta
// Brasil        Brasilia      R�o de Janeiro   San Pablo
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
	arreglo[2,3]="Bogot�"
	arreglo[2,4]="Santa Marta"
	
	arreglo[3,1]= "Brasil"
	arreglo[3,2]= "Brasilia"
	arreglo[3,3]= "R�o de Janeiro"
	arreglo[3,4]= "San Pablo"
	
	Escribir "Ingrese un pa�s para mostrar sus ciudades " 
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
