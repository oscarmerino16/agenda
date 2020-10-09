Algoritmo agenda
	
	Definir nombre, eliminar, buscar, editar Como Caracter;
	Definir telf, i Como Entero;
	
	i=0;
	nombre="";
	buscar="";
	eliminar="";
	telf=0;
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
				Escribir "Dime el nombre del nuevo empleado";
				Leer nombre;
				Escribir "Dime el telefono del nuevo emplado";
				leer telf;
			2:
				Escribir "Que empleado quieres borrar";
				leer eliminar;
				
				Si eliminar=nombre Entonces
					nombre=" ";
					telf=0;
				Fin Si
				
			3:
				Escribir "Que empleado quieres editar";
				leer editar;
				
				Si editar=nombre Entonces
					Escribir "Dime el numero de telf";
					leer telf;
				Fin Si
			4:
				Escribir "Que empleado quieres buscar";
				leer buscar;
				
				Si buscar=nombre Entonces
					Escribir "El empleado ", nombre, " su telefono es ", telf;
				SiNo
					Escribir "No hay ningun empleado con ese nombre";
				Fin Si
			5:
				Escribir nombre;
				Escribir telf;
				
		Fin Segun
		
	Hasta Que i=6;
	
	
FinAlgoritmo
