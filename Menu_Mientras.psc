SubProceso opcion <- programas
	//SubProceso 
	
	definir opcion Como Entero;
	
	
	Escribir "------------Algoritmos-----------";
	escribir "---------------------------------";
	escribir "[1] Boleto loteria---------------";
	escribir "[2] Correo-----------------------";
	escribir "[3] Cuenta Regresiva-------------";
	escribir "[4] Saludo-----------------------";
	escribir "[5] Zanahorias-------------------";
	escribir "[6] para salir-------------------";
	escribir sin saltar "Elige una opcion";
	leer opcion;
	
	
	
	limpiar pantalla;
	
	segun opcion hacer
		1:
			definir num,c,a como entero ;
			Escribir 'Ingrese un número que cree ganará';
			leer  num;
			a <- azar(101);
			c <- 1;
			mientras num<>a hacer
				a <- azar(101);
				c<-c+1;
			FinMientras
			Si c <=100 Entonces
				Escribir 'En ', c, ' Intentos se lograra sacar tu número elegido';
			SiNo
				Escribir 'En 100 intentos no se logro sacar el número';
			FinSi
	
			Esperar Tecla;
			
		2:
			Definir correo como texto;
			Definir arroba, punto, tam, i Como Entero;
			arroba<-0;
			punto<-0;
			Escribir Sin Saltar "Ingresa tu correo";
			leer correo;
			i <- 1;
			tam<-Longitud(correo);
			Mientras i <= tam-1 Hacer
				Si Subcadena(correo,i,i)="@" Entonces
					arroba<-arroba+1;
					si Subcadena(correo,i+1,i+1)="." Entonces
						ar<-par+1;
					FinSi
				FinSi
				si Subcadena(correo,i,i)="." Entonces
					punto<-punto+1;
				FinSi
				i <- i + 1;
			FinMientras
			
			Si arroba=0 o arroba>1 o punto=0 Entonces
				Escribir correo, " es un correo invalido";
			SiNo
				Escribir correo," es un correo valido";
			FinSi
			esperar tecla;
			
			
		3:
			Definir cuenta como entero;
			
			Escribir "Ingrese un numero";
			Leer cuenta;
			
			Mientras cuenta > 0 Hacer
				cuenta <- cuenta - 1;
				Borrar Pantalla;
				Escribir "Cuenta regresiva: ", cuenta;
				Esperar 1 segundo;
				
			FinMientras
			
			
		
			
		4:
			Definir Saludo Como Entero;
			Saludo <- 1;
			Mientras Saludo <= 10 Hacer
				Escribir 'Hola a todos';
				Saludo <- Saludo+1;
			FinMientras
			esperar tecla;
		5:
			Definir cant, cont Como Entero;
			Escribir "Ingresa la cantidad de hortalizas a sembrar ";
			Leer cant;
			cont <- 1;
			
			Mientras cont <= cant Hacer
				Si cont mod 2 = 0 Entonces
					Escribir sin saltar " & ";
				SiNo
					Escribir sin saltar "*";
				FinSi
				Si cont mod 10 = 0 Entonces
					Escribir " ";
				FinSi
				cont <- cont + 1;
			FinMientras
			Escribir " ";
			
			
			
		De Otro Modo:
			si opcion <> 6 Entonces
				escribir "La opcion es invalida";
				Esperar Tecla;
			FinSi
	FinSegun
	Limpiar pantalla;
FinSubProceso
Algoritmo Repetir_Hasta_Que
	definir c Como Entero;
	Repetir
		Limpiar Pantalla;
		escribir programas();
		c<-programas();
	Hasta Que c=6
	Escribir "Hasta pronto que tengas un buen dia!!!";
FinAlgoritmo