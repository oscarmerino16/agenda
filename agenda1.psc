


Algoritmo agenda1
	
	Definir nombre, eliminar, buscar, editar, mContactos, cont, telf Como Caracter;
	Definir  i, tam, j, fila, columna Como Entero;
	
	Escribir "Dime le numero de filas que quieres";
	Leer fila;
	Escribir "Dime le numero de columnas que quieres";
	Leer columna;
	
	fila=10;
	columna=2;
	Dimension mContactos[fila,columna];
	
	
	
	i=0;
	nombre="";
	buscar="";
	eliminar="";
	editar="";
	
	
	Repetir
		Escribir "1-", " ", "Guardar contactos";
		Escribir "2-", " ", "Ver contactos";
		Escribir "3-", " ", "Eliminar contactos";
		Escribir "4-", " ", "Editar contactos";
		leer i;
		
		Segun i Hacer
			1:
				para i=0 Hasta fila-1 Con Paso 1 Hacer
				
				si mContactos[i,0] == "" Entonces
					Escribir "Dime el nombre del nuevo empleado";
					leer nombre;
					Escribir "Dime el telefono del nuevo emplado";
					leer telf;
					mContactos[i,0]=nombre;
					mContactos[i,1]=telf;
					i=fila;
				FinSi
			
				FinPara
			
			2:
				Escribir "Dime el empleado que quieres borrar";
				leer eliminar;
				para i=0 Hasta fila-1 Con Paso 1 Hacer
					si mContactos[i,0] == eliminar Entonces
						
						mContactos[i,0]="";
						mContactos[i,1]="";
						
					FinSi
				FinPara
				Escribir nombre + " --- " + telf;
			3:
				Escribir "Dime el empleado que quieres borrar";
				leer eliminar;
				para i=0 Hasta fila-1 Con Paso 1 Hacer
					si mContactos[i,0] == eliminar Entonces
						
						mContactos[i,0]="";
						mContactos[i,1]="";
						
					FinSi
				FinPara
			4:
				
		Fin Segun
		
	Hasta Que i=5;
	
	
FinAlgoritmo
