Algoritmo Series
	Definir c, opcion, acumuladora como entero;
	
	Escribir "====================";
	Escribir "I    Series         ";
	Escribir "I                  I";
	Escribir "====================";
	Escribir "1 serie 1 5 al 500";
	Escribir "2 serie 2 5 en 5";
	Escribir "3 serie de Fibonacci";
	Escribir "4 serie Factorial";
	leer opcion;
	
	si opcion >= 1 y opcion <= 4 Entonces
		Si opcion = 1 Entonces
			Para c <-5 hasta 500 con paso 5 hacer
				Escribir Sin Saltar c, " ";
			FinPara
		FinSi
		Si opcion = 2 Entonces
			para c <- 500 hasta 5 con paso -5 Hacer
				Escribir Sin Saltar c, " ";
			FinPara
		FinSi
		Si opcion = 3 Entonces
			para c <- 1 hasta 21 con paso +5-2 hacer
				Escribir sin saltar c, " ";
			FinPara
		FinSi
		Si opcion = 4 Entonces
			Definir Fib Como Entero;
			Escribir sin saltar "Ingresa valor factorial";
			leer fib;
			acumuladora <-1;
			para c <-fib hasta 1 con paso -1 hacer
			acumuladora <- acumuladora * c;
			Escribir Sin Saltar c, "* ";
			FinPara
			Escribir acumuladora;
		FinSi
	SiNo
		Escribir "Opcion incorrecta";
	FinSi
FinAlgoritmo
