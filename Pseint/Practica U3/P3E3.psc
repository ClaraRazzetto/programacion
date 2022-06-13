// Realizar un programa de conversión que traduzca un peso ingresado en Kg a gramos, o a libras, o a toneladas o a onzas
Proceso P3E3
	Definir op Como Entero
	Definir peso como real
	
	Escribir "Ingrese el peso en kg"
	Leer peso
	
	Escribir "Seleccione la opción de conversión deseada"
	Escribir "1-gramos"
	Escribir "2-libras"
	Escribir "3-toneladas"
	Escribir "4-onzas"
	Leer op
	
	Segun op Hacer
		1:
			Escribir "El peso en gramos es: " peso*1000
		2:
			Escribir "El peso en libras es: " peso*2,205
		3:
			Escribir "El peso en toneladas es: " peso/1000
		4:
			Escribir "El peso en onzas es: " peso*35,274
	Fin Segun
FinProceso
