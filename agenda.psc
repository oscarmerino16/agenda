
SubProceso nuevo_contacto(mContactos,fila,columna)
	
	Definir i Como Entero;
	Definir nombre, telf, cont Como Caracter;
	Escribir "Dime el nombre del nuevo empleado";
	leer nombre;
	Escribir "Dime el telefono del nuevo emplado";
	leer telf;
	cont= nombre+";"+telf;
	Para i=0 Hasta fila -1 Con Paso 1 Hacer
		si (mContactos[i]== "") Entonces
			mContactos[i]= cont ;
			i=fila;
		FinSi
	Fin Para
	
FinsubProceso


SubProceso eliminar_contacto(mContactos,fila,columna)
	Definir nombre,telf, eliminar Como Caracter;
	Definir i, j Como Entero;
	
	Escribir "Que empleado quieres borrar";
	leer eliminar;
	
	Para i=0 Hasta fila -1 Con Paso 1 Hacer
		si (mContactos[i]<> "") Entonces
			Para j=0 Hasta Longitud(mContactos[i])-1 Con Paso 1 Hacer
				Si (Subcadena(mContactos[i],j,j)== ";")Entonces
					nombre=Subcadena(mContactos[i],0,j-1);
					telf=Subcadena(mContactos[i],j+1,Longitud(mContactos[i])-1);
				Fin Si
			Fin Para
			si (eliminar==nombre) Entonces
				mContactos[i]="";
			FinSi
		FinSi
	Fin Para
	
FinSubProceso

SubProceso editar_contacto(mContactos,fila,columna)
	
	Definir nombre,telf, editar, cont Como Caracter;
	Definir i, j Como Entero;
	
	Escribir "Que empleado quieres editar";
	leer editar;
	
	Para i=0 Hasta fila -1 Con Paso 1 Hacer
		si (mContactos[i]<> "") Entonces
			Para j=0 Hasta Longitud(mContactos[i])-1 Con Paso 1 Hacer
				Si (Subcadena(mContactos[i],j,j)== ";")Entonces
					nombre=Subcadena(mContactos[i],0,j-1);
					telf=Subcadena(mContactos[i],j+1,Longitud(mContactos[i])-1);
				Fin Si
			Fin Para
			Si editar==nombre Entonces
				mContactos[i]= "";
				Escribir "Dime el nuevo nombre";
				leer nombre;
				Escribir "Dime el nuevo telefono";
				leer telf;
				cont= nombre+";"+telf;
				mContactos[i]=cont;
			FinSi
		FinSi
	Fin Para
	
FinSubProceso

subProceso buscar_contacto(mContactos,fila,columna)
	
	Definir nombre,telf, buscar Como Caracter;
	Definir i, j Como Entero;
	
	Escribir "Que empleado quieres buscar";
	leer buscar;
	nombre="";
	telf="";
	Para i=0 Hasta fila -1 Con Paso 1 Hacer
		si (mContactos[i]<> "") Entonces
			Para j=0 Hasta Longitud(mContactos[i])-1 Con Paso 1 Hacer
				Si (Subcadena(mContactos[i],j,j)== ";")Entonces
					nombre=Subcadena(mContactos[i],0,j-1);
					telf=Subcadena(mContactos[i],j+1,Longitud(mContactos[i])-1);
				Fin Si
			Fin Para
			si (buscar==nombre o buscar==telf) Entonces
				Escribir nombre + " --- " + telf;
			FinSi
			
		FinSi
	Fin Para
	
FinSubProceso

subProceso ver_contacto(mContactos,fila,columna)
	
	Definir nombre,telf Como Caracter;
	Definir i, j Como Entero;
	
	Para i=0 Hasta fila -1 Con Paso 1 Hacer
		si (mContactos[i]<> "") Entonces
			Para j=0 Hasta Longitud(mContactos[i])-1 Con Paso 1 Hacer
				Si (Subcadena(mContactos[i],j,j)== ";")Entonces
					nombre=Subcadena(mContactos[i],0,j-1);
					telf=Subcadena(mContactos[i],j+1,Longitud(mContactos[i])-1);
				Fin Si
			Fin Para
			Escribir nombre + " --- " + telf;
		FinSi
	Fin Para	
	
FinSubProceso


Algoritmo agenda
	
	Definir nombre, eliminar, buscar, editar, mContactos, cont, telf Como Caracter;
	Definir  i, tam, j, fila, columna Como Entero;
	
	Escribir "Dime le numero de filas que quieres";
	Leer fila;
	Escribir "Dime le numero de columnas que quieres";
	Leer columna;
	
	Dimension mContactos[fila,columna];
	
	Para i=0 Hasta fila-1 Con Paso 1 Hacer
        Para j=0 Hasta columna-1 Con Paso 1 Hacer
            mContactos[fila,columna]="";
        Fin Para
    Fin Para
	
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
				nuevo_contacto(mContactos,fila,columna);
			2:
				ver_contacto(mContactos,fila,columna);
			3:
				eliminar_contacto(mContactos,fila,columna);
			4:
				editar_contacto(mContactos,fila,columna);
		Fin Segun
		
	Hasta Que i=5;
	
	
FinAlgoritmo
