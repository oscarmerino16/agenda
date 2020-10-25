
SubProceso nuevo_contacto(vContacto,tam)
	
	Definir i Como Entero;
	Definir nombre, telf, cont Como Caracter;
	Escribir "Dime el nombre del nuevo empleado";
	leer nombre;
	Escribir "Dime el telefono del nuevo emplado";
	leer telf;
	cont= nombre+";"+telf;
	Para i=0 Hasta tam -1 Con Paso 1 Hacer
		si (vContacto[i]== "") Entonces
			vContacto[i]= cont ;
			i=tam;
		FinSi
	Fin Para
	
FinsubProceso


SubProceso eliminar_contacto(vContacto,tam)
	Definir nombre,telf, eliminar Como Caracter;
	Definir i, j Como Entero;
	
	Escribir "Que empleado quieres borrar";
	leer eliminar;
	
	Para i=0 Hasta tam -1 Con Paso 1 Hacer
		si (vContacto[i]<> "") Entonces
			Para j=0 Hasta Longitud(vContacto[i])-1 Con Paso 1 Hacer
				Si (Subcadena(vContacto[i],j,j)== ";")Entonces
					nombre=Subcadena(vContacto[i],0,j-1);
					telf=Subcadena(vContacto[i],j+1,Longitud(vContacto[i])-1);
				Fin Si
			Fin Para
			si (eliminar==nombre) Entonces
				vContacto[i]="";
			FinSi
		FinSi
	Fin Para
	
FinSubProceso

SubProceso editar_contacto(vContacto,tam)
	
	Definir nombre,telf, editar, cont Como Caracter;
	Definir i, j Como Entero;
	
	Escribir "Que empleado quieres editar";
	leer editar;
	
	Para i=0 Hasta tam -1 Con Paso 1 Hacer
		si (vContacto[i]<> "") Entonces
			Para j=0 Hasta Longitud(vContacto[i])-1 Con Paso 1 Hacer
				Si (Subcadena(vContacto[i],j,j)== ";")Entonces
					nombre=Subcadena(vContacto[i],0,j-1);
					telf=Subcadena(vContacto[i],j+1,Longitud(vContacto[i])-1);
				Fin Si
			Fin Para
			Si editar==nombre Entonces
				vContacto[i]= "";
				Escribir "Dime el nuevo nombre";
				leer nombre;
				Escribir "Dime el nuevo telefono";
				leer telf;
				cont= nombre+";"+telf;
				vContacto[i]=cont;
			FinSi
		FinSi
	Fin Para
	
FinSubProceso

subProceso buscar_contacto(vContacto,tam)
	
	Definir nombre,telf, buscar Como Caracter;
	Definir i, j Como Entero;
	
	Escribir "Que empleado quieres buscar";
	leer buscar;
	nombre="";
	telf="";
	Para i=0 Hasta tam -1 Con Paso 1 Hacer
		si (vContacto[i]<> "") Entonces
			Para j=0 Hasta Longitud(vContacto[i])-1 Con Paso 1 Hacer
				Si (Subcadena(vContacto[i],j,j)== ";")Entonces
					nombre=Subcadena(vContacto[i],0,j-1);
					telf=Subcadena(vContacto[i],j+1,Longitud(vContacto[i])-1);
				Fin Si
			Fin Para
			si (buscar==nombre o buscar==telf) Entonces
				Escribir nombre + " --- " + telf;
			FinSi
			
		FinSi
	Fin Para
	
FinSubProceso

subProceso ver_contacto(vContacto,tam)
	
	Definir nombre,telf Como Caracter;
	Definir i, j Como Entero;
	
	Para i=0 Hasta tam -1 Con Paso 1 Hacer
		si (vContacto[i]<> "") Entonces
			Para j=0 Hasta Longitud(vContacto[i])-1 Con Paso 1 Hacer
				Si (Subcadena(vContacto[i],j,j)== ";")Entonces
					nombre=Subcadena(vContacto[i],0,j-1);
					telf=Subcadena(vContacto[i],j+1,Longitud(vContacto[i])-1);
				Fin Si
			Fin Para
			Escribir nombre + " --- " + telf;
		FinSi
	Fin Para	
	
FinSubProceso


Algoritmo agenda
	
	Definir nombre, eliminar, buscar, editar, vContacto, cont, telf Como Caracter;
	Definir  i, tam, j Como Entero;
	
	
	tam=10;
	Dimension vContacto[tam];
	
	Para i=0 Hasta tam -1 Con Paso 1 Hacer
		vContacto[i]= "";
	Fin Para
	
	i=0;
	nombre="";
	buscar="";
	eliminar="";
	editar="";
	
	
	Repetir
		Escribir "Pulsa 1 para añadir nuevos empleados";
		Escribir "Pulsa 2 para borrar empleados";
		Escribir "Pulsa 3 para editar empleados";
		Escribir "Pulsa 4 para buscar empleados";
		Escribir "Pulsa 5 para ver los empleados";
		Escribir "Pulsa 6 para salir de la aplicacion";
		leer i;
		
		Segun i Hacer
			1:
				nuevo_contacto(vContacto,tam);
			2:
				eliminar_contacto(vContacto,tam);
			3:
				editar_contacto(vContacto,tam);
			4:
				buscar_contacto(vContacto,tam);
			5:
				ver_contacto(vContacto,tam);
		Fin Segun
		
	Hasta Que i=6;
	
	
FinAlgoritmo
