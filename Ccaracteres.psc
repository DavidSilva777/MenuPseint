Algoritmo Ccaracteres
	Definir nombre, letra  Como Caracter;
	Definir i, vocales, consonantes, espacios, raros, largo Como Entero;
	Escribir 'Íngresa un nombre:';
	Leer nombre;
	largo <- Longitud(nombre);
	vocales <- 0;
	consonantes <- 0;
	espacios <- 0;
	raros <- 0;
	Si largo > 0 Entonces
		Para i <- 1 hasta largo hacer
			 letra <- Mayusculas(Subcadena(nombre, i,1));
			si letra = 'A' O letra = 'E' O letra = 'I'  O letra = 'O' O letra = 'U' Entonces
				vocales <- vocales + 1;
			 si letra >= 'A' Y letra <= 'Z' entonces 
				 consonantes <- consonantes +  1;si letra = ' ' Entonces
					 si letra = ' ' Entonces
						 espacios <- espacios + 1;
					 SiNo
						raros <- raros + 1;
					FinSi c
				Escribir 'Vocales: ', vocales;
				Escribir 'Consonantes: ', consonantes;
				Escribir 'Espacios en blanco: ', espacios;
				Escribir 'Caracteres raros: ', raros;
			SiNo
				
				Escribir 'El nombre no debe estar vacio';
			FinSi
	FinSi
	
FinAlgoritmo
