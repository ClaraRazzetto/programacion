Proceso PracticaOrdenBusqueda
	//Defino la Dimension 
	Definir fila, columna Como Entero
	fila = 8
	columna = 5
	
	//Defino matriz
	Definir matriz Como Caracter
	Dimension matriz[fila, columna]
	
	//Cargo la matriz
	Carga(matriz)
	
	//Defino columna con su valor para no confundir
	Definir columnaNombre, columnaApellido, columnaDNI, columnaEdad Como Entero
	columnaNombre=0
	columnaApellido=1
	columnaDNI=2
	columnaEdad=4
	
	Definir dni Como Caracter
	Definir apellido, nombre Como Caracter
	Definir indice,tipoOrden Como Entero
	indice = -1
	
	Definir op Como Entero
	Definir salida Como Logico
	salida = Verdadero
	
	
	Repetir
		Escribir "Menú"
		Escribir "1-Buscar por DNI"
		Escribir "2-Ordenar por apellido"
		Escribir "3-Ordenar por apellido y nombre"
		Escribir "4-Buscar por apellido y nombre"
		Escribir "5-Lista ordenada por edad o por apellido y nombre"
		Escribir "6-Salir"
		Leer op
		
		Segun op Hacer
			1:
				//Busqueda secuencial
				Escribir "Ingrese el DNI que desea encontrar"
				Leer dni
				indice = BuscarPorDNI(matriz,dni, columnaDNI,fila)
				Si indice <> -1
					MostrarPersona(matriz, indice, columna)
				SiNo
					Escribir "Persona no encontrada"
				FinSi
				
			2:
				OrdenPorApellido(matriz,fila, columna,columnaApellido)
			
			3:
				OrdenApellidoNombre(matriz, fila, columna, columnaApellido, columnaNombre,op)
			4:
				//Busqueda dicotomica
				Escribir "Ingrese el apellido y el nombre que desea buscar"
				Leer apellido, nombre
				OrdenApellidoNombre(matriz, fila, columna, columnaApellido, columnaNombre,op)
				indice = BuscarApellidoNombre(matriz, columnaApellido, columnaNombre,fila, nombre, apellido)
				Si indice <> -1
					MostrarPersona(matriz, indice, columna)
				SiNo
					Escribir "Persona no encontrada"
				FinSi
				
			5:  //Ejercicio 5
				Escribir ("Ingrese la opción deseada:")
				Escribir("1- Orden por edad")
				Escribir ("2- Orden por apellido y nombre")
				Leer TipoOrden
				OrdenarMatriz(matriz, fila, columna, columnaApellido, columnaNombre,columnaEdad, TipoOrden,op)
				
			6: 
				salida = Falso
				
			De Otro Modo:
				Escribir "opción invalida! Ingrese nuevamente"
				Leer op
			
		Fin Segun
	Mientras Que salida 
	
FinProceso

//Ejercicio 5
SubProceso OrdenarMatriz(matriz, fila, columna, columnaApellido, columnaNombre,columnaEdad, TipoOrden,op)
Definir i, j, posMenor Como Entero
Definir aux Como Caracter
Si TipoOrden == 2
	OrdenApellidoNombre(matriz, fila, columna, columnaApellido, columnaNombre,op)
Sino 
	//Orden por Edad
	Para i=0 Hasta fila-3 Hacer
		posMenor=i
		Para j=i+1 Hasta fila-2 Hacer
			Si matriz[j,columnaEdad] < matriz[posMenor,columnaEdad] Entonces
				posMenor=j
			FinSi
		FinPara
		
		Para j=0 hasta columna-1 Hacer
			aux = matriz[i,j]
			matriz[i,j]=matriz[posMenor,j]
			matriz[posMenor,j]=aux
		FinPara
	FinPara
	MostrarMatriz(matriz,fila, columna)
FinSi

FinSubProceso

//Ejercicio 4
SubProceso indice = BuscarApellidoNombre(matriz, columnaApellido, columnaNombre,fila, nombre, apellido)
	Definir indice, i, centro, inferior, superior Como Entero
	Definir encontrado Como Logico
	inferior = 0
	superior = fila-1
	encontrado = Falso
	Repetir
		centro = trunc((inferior+superior)/2)
		Si (matriz[centro,columnaApellido] == apellido)
			Si(matriz[centro,columnaNombre] == nombre)
				indice = centro
				encontrado = Verdadero
			Sino
				Si (matriz[centro, columnaNombre] < nombre)
					inferior = centro + 1
				SiNo
					inferior = centro - 1
				FinSi
			FinSi
		SiNo
			Si (matriz[centro, columnaApellido] < apellido)
				inferior = centro + 1
			SiNo
				superior = centro - 1
			FinSi
		FinSi
		Si inferior > superior 
			indice = -1
		FinSi
	Mientras Que !encontrado y inferior<=superior
FinSubProceso

//Ejercicio 3
SubProceso OrdenApellidoNombre(matriz,fila, columna, columnaApellido,columnaNombre,op)
	Definir i, j, posMenor Como Entero
	Definir aux Como Caracter
	Para i=0 Hasta fila-3 Hacer
		
		posMenor=i
		
		Para j=i+1 Hasta fila-2 Hacer
			Si matriz[j,columnaApellido] < matriz[posMenor,columnaApellido] O matriz[j, columnaNombre] < matriz[posMenor, columnaNombre] Entonces
				posMenor=j
			FinSi
		FinPara
		
		Para j=0 hasta columna-1 Hacer
			aux = matriz[i,j]
			matriz[i,j]=matriz[posMenor,j]
			matriz[posMenor,j]=aux
		FinPara
	FinPara
	
	Si op==3 O op ==5
		MostrarMatriz(matriz, fila, columna)
	FinSi
	
FinSubProceso

//Ejercicio 2
SubProceso OrdenPorApellido(matriz,fila, columna,columnaApellido)
	Definir i, j, posMenor Como Entero
	Definir aux Como Caracter
	Para i=0 Hasta fila-3 Hacer
		posMenor=i
		Para j=i+1 Hasta fila-2 Hacer
			Si matriz[j,columnaApellido] < matriz[posMenor,columnaApellido] Entonces
				posMenor=j
			FinSi
		FinPara
		
		Para j=0 hasta columna-1 Hacer
			aux = matriz[i,j]
			matriz[i,j]=matriz[posMenor,j]
			matriz[posMenor,j]=aux
		FinPara
	FinPara
	MostrarMatriz(matriz,fila, columna)
FinSubProceso

//Mostrar matriz
SubProceso MostrarMatriz(matriz,fila, columna)
	Definir i,j Como Entero
	Para i=0 Hasta fila-1  Con Paso 1
		Para j=0 Hasta columna-1 Con Paso 1
			Escribir Sin Saltar matriz[i,j] " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

//Ejercicio 1
SubProceso indice = BuscarPorDNI(matriz,dni,columnaDNI,fila)
	Definir i, indice como Entero
	indice=-1
	i=0
	Mientras i < fila Hacer
		Si (matriz[i,columnaDNI] == dni)
			indice = i
		FinSi
		i = i + 1
	FinMientras
FinSubProceso 

//Mostrar una fila de la matriz
SubProceso MostrarPersona(matriz, indice, columna)
	Definir i Como Entero
	Para i=0 hasta columna-1 Hacer
		Escribir Sin Saltar matriz[indice,i] " "
	FinPara
	Escribir " "
FinSubProceso

//Cargo la matriz 
SubProceso Carga(matriz Por Referencia)
	
	matriz[0,0] = "Ana"
	matriz[0,1] = "Martinez"	
	matriz[0,2] = "17123456"
	matriz[0,3] = "+541141200011"
	matriz[0,4] = "56"
	
	matriz[1,0] = "Camila"	
	matriz[1,1] = "Noe"	
	matriz[1,2] = "25789101"
	matriz[1,3] = "+543419485831"
	matriz[1,4] = "45"
	
	matriz[2,0] = "Bruno"	
	matriz[2,1] = "Noe"	
	matriz[2,2] = "39121314"
	matriz[2,3] = "+541145565789"
	matriz[2,4] = "26"
	
	matriz[3,0] = "Dardo"	
	matriz[3,1] = "Pistilli"	
	matriz[3,2] = "21151617"
	matriz[3,3] = "+541158637543"
	matriz[3,4] = "48"
	
	matriz[4,0] = "Ernestina"	
	matriz[4,1] = "Quesada "	
	matriz[4,2] = "33181920"
	matriz[4,3] = "+541161294758"
	matriz[4,4] = "35"
	
	matriz[5,0] = "Fausto"	
	matriz[5,1] = "Ramirez"	
	matriz[5,2] = "15212223"
	matriz[5,3] = "+543423444567"
	matriz[5,4] = "60"
	
	matriz[6,0] = "Jasmín"	
	matriz[6,1] = "Sosa"	
	matriz[6,2] = "40242526"
	matriz[6,3] = "+543402512345"
	matriz[6,4] = "25"
	
	matriz[7,0] = "Leonardo"
	matriz[7,1] = "Tolosa"	
	matriz[7,2] = "11272829"
	matriz[7,3] = "+541151234567"
	matriz[7,4] = "70"
	
FinSubProceso





	