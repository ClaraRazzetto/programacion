Proceso P426
	Definir arreglo Como Caracter
	Dimension arreglo[10,2]
	
	arreglo[1,1] = "Pedro Gomez"
	arreglo[1,2] = "7"
	arreglo[2,1] = "Martín Ceres"
	arreglo[2,2] = "6"
	arreglo[3,1] = "Ernestina Diaz"
	arreglo[3,2] = "1"
	arreglo[4,1] = "Gastón Bautista"
	arreglo[4,2] = "2"
	arreglo[5,1] = "Dalma Alvarez"
	arreglo[5,2] = "8"
	arreglo[6,1] = "Patricio Fernandez"
	arreglo[6,2] = "3"
	arreglo[7,1] = "Faustina Martinez"
	arreglo[7,2] = "10"
	arreglo[8,1] = "Andrea Perez"
	arreglo[8,2] = "9"
	arreglo[9,1] = "Hilda Lopez"
	arreglo[9,2] = "4"
	arreglo[10,1] = "León García"
	arreglo[10,2] = "5"
	
	
	
	
	
FinProceso

SubProceso ListaCorredores(arreglo)
	Definir i Como Entero
	
	Escribir "lista de corredores"
	
	Para i=1 Hasta 10 Con Paso 1 Hacer
		Escribir arreglo[i,1]
	Fin Para
	
FinSubProceso

SubProceso ListaMejores(arreglo)
	Definir i Como Entero
	
	Escribir "Mejores 3"
	
	Para i=1 Hasta 10 Con Paso 1 Hacer
		
		Escribir arreglo[i,1]
	Fin Para
FinSubProceso

SubProceso ListaPosiciones(arreglo)
	Definir i Como Entero
	
	Escribir "lista de posiciones"
	
	Para i=1 Hasta 10 Con Paso 1 Hacer
		Escribir arreglo[i,2]
	Fin Para
FinSubProceso
	