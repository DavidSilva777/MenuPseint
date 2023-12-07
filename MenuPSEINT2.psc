//David Oswaldo Silva Gutierrez
//GDS0611
SubProceso opcion <- programas
	Definir opcion Como Entero;
	
	//SubProceso

	Escribir "   ----------Algoritmos-------------";
	escribir "   ---------------------------------";
	escribir "[1] --------Contar multiplos--------";
	escribir "[2] ----Aritmetica o Geometrica?----";
	escribir "[3] -----------Fechas A-------------";
	escribir "[4] ----------La Parranda-----------";
	escribir "[5] --------Velocidad Maxima--------";
	escribir "[6] -----------Repartir Par---------";
	Escribir "[7] Contando los enteros de la linea";
	Escribir "[8] -------Mensaje Encriptado-------";
	Escribir "[9] -------------Salir--------------";
	Escribir "    --------------------------------";
	Escribir "   ----------Algoritmos-------------";
	escribir sin saltar "Elige una opcion";
	leer opcion;
	
	
	
	limpiar pantalla;
	
	segun opcion hacer
		1:
			// Declarar variables
			Definir n, p, q, contador, i Como Entero;
			
			// Leer los valores de n, p y q
			Escribir "Ingrese el valor de n: ";
			Leer n;
			
			Escribir "Ingrese el valor de p: ";
			Leer p;
			
			Escribir "Ingrese el valor de q (q >= p): ";
			Leer q;
			
			// Validar que p sea menor o igual a q
			Mientras p > q Hacer
				Escribir "El valor de q debe ser mayor o igual a p. Ingrese un valor válido para q: ";
				Leer q;
			FinMientras
			
			// Inicializar el contador
			contador <- 0;
			
			// Iterar sobre los números entre p y q
			Para i <- p Hasta q Hacer
				// Verificar si i es múltiplo de n
				Si i % n = 0 Entonces
					// Incrementar el contador
					contador <- contador + 1;
				FinSi
			FinPara
			
			// Mostrar el resultado
			Escribir "Hay ", contador, " números entre ", p, " y ", q, " que son múltiplos de ", n;
			Esperar Tecla;
			
		2:
			//Declarar variables
			// Dados los tres primeros términos de la sucesión
			Definir a1, a2, a3 Como Real;
			Escribir "Ingresa el primer valor";
			leer a1;
			Escribir "Ingresa el segundo valor";
			leer a2;
			Escribir "Ingresa el tercer valor ";
			leer a3;
			
			// Calcular las diferencias y razones
			Definir d Como Real;
			Definir r Como Real;
			
			// Verificar si es aritmética
			Si a2 - a1 = a3 - a2 Entonces
				// La sucesión es aritmética
				Escribir "La sucesión es aritmética.";
				d <- a2 - a1;
				Escribir "La diferencia es: ", d;
			FinSi
			
			// Verificar si es geométrica
			Si a2 / a1 = a3 / a2 Entonces
				// La sucesión es geométrica
				Escribir "La sucesión es geométrica.";
				r <- a2 / a1;
				Escribir "La razón es: ", r;
			FinSi
			
			// Si no es ni aritmética ni geométrica
			Si No (a2 - a1 = a3 - a2) y No (a2 / a1 = a3 / a2) Entonces
				Escribir "La sucesión no es ni aritmética ni geométrica.";
FinSi
			esperar tecla;
			
			
		3:
			
			// Declarar variables
			
			Definir a,b,c Como Entero;
			// Leemos los valores de a, b y c
			Escribir "Ingresa el dia';
			Leer a;
			Escribir "Ingresa el mes';
			Leer b;
			Escribir "Ingresa el año';
			Leer c;
			
			
			// Calculamos la fecha del día siguiente
			a <- a + 1;
			Si (a > 31) entonces
				a <- 1;
				b <- b + 1;
				Si (b > 12) entonces
					b <- 1;
					c <- c + 1;
				FinSi
			FinSi
			
			// Mostramos la fecha resultante
			Escribir "La fecha del día siguiente es: ";
			Escribir a, "/", b, "/", c;
			Esperar Tecla;
		4:
			// Declarar variables
			Definir total_tragos Como Entero;
			
			// Leer la cantidad total de tragos
			Escribir "Ingrese la cantidad total de tragos (número par): ";
			Leer total_tragos;
			
			// Calcular la cantidad de tragos que deben beber ambos
			Definir tragos_por_persona Como Entero;
			tragos_por_persona <- total_tragos / 2;
			
			// Mostrar el resultado
			Escribir "Cada uno debe beber ", tragos_por_persona, " tragos.";
	
			esperar tecla;
			
			
		5:
			// Declarar variables
			Definir n, k, h, velocidad_maxima, i, velocidad_actual Como Real ;
			
			// Leer la cantidad de pares
			Escribir "Ingrese la cantidad de pares de valores: ";
			Leer n;
			
			// Inicializar la velocidad máxima como cero
			velocidad_maxima <- 0.0;
			
			// Leer y procesar cada par de valores
			Para i <- 1 Hasta n Hacer
				// Leer los kilómetros recorridos y las horas transcurridas
				Escribir "Ingrese los kilómetros recorridos para el par ", i, ": ";
				Leer k;
				
				Escribir "Ingrese las horas transcurridas para el par ", i, ": ";
				Leer h;
				
				// Calcular la velocidad para el par actual
				velocidad_actual <- k / h;
				
				// Actualizar la velocidad máxima si la velocidad actual es mayor
				Si velocidad_actual > velocidad_maxima Entonces
					velocidad_maxima <- velocidad_actual;
				FinSi
			FinPara
			
			// Mostrar el resultado
			Escribir "La velocidad máxima alcanzada es: ", velocidad_maxima, " Km/h";
			esperar tecla;
		6:
			// Declarar variables
			Definir n, m, man, sobra Como entero;
			
			// Solicitar al usuario que ingrese el número de manzanas
			Escribir "Agrega el número de manzanas que tiene";
			Leer m;
			
			// Solicitar al usuario que ingrese el número de hermanas
			Escribir "Agrega el número de hermanas";
			Leer n;
			
			// Calcular la cantidad de manzanas que le tocan a cada hermana
			man <- trunc(m/n);
			
			// Calcular la cantidad de manzanas que sobran
			sobra <- m mod n;
			
			// Verificar si la cantidad de manzanas es par
			si man mod 2 = 0 Entonces
				// Si es par, imprimir la cantidad de manzanas que le toca a cada hermana
				Escribir "Les toca de ", man, " manzanas a cada hermana";
			SiNo
				// Si no es par, imprimir que no les toca nada y mostrar las manzanas y sobra
				Escribir "No les toca nada, ya que ", man, " no es par";
				Escribir "Las manzanas que tienen son ", man, " y sobra ", sobra;
			FinSi

			Esperar Tecla;
		7:
			// Declarar variables
			Definir num, c, sum, t Como Entero;
			
			// Inicializar c y sum en 0
			c <- 0;
			sum <- 0;
			
			// Repetir el siguiente bloque de código hasta que t sea igual a 0
			Repetir
				// Solicitar al usuario que ingrese un número
				Escribir "Ingresa un número";
				Leer num;
				
				// Incrementar el contador c y sumar el número ingresado a la suma total
				c <- c + 1;
				sum <- sum + num;
				
				// Preguntar al usuario si desea agregar otro dato
				Escribir "¿Deseas agregar otro dato? [1] Si [0] Para no";
				Leer t;
				
				// Reiniciar el contador c si el número ingresado es 0
				si num = 0 Entonces
					c <- 0;
				FinSi
				
				// Continuar ejecutando el bucle hasta que t sea igual a 0
			Hasta Que t = 0;
			
			// Mostrar la suma de los números ingresados
			Escribir "La suma de los números ingresados es ", sum;
			
			// Mostrar la cantidad de números enteros ingresados
			Escribir "La cantidad de números enteros es ", c;

			Esperar Tecla;
		8:
			// Declarar variables
			Definir palabra1, palabra2, mensajeEncriptado Como Caracter;
			
			Definir longitudPalabras, i Como Entero;
			
			// Solicitar al usuario que ingrese la primera palabra
			Escribir "Ingrese la primera palabra: ";
			Leer palabra1;
			
			// Solicitar al usuario que ingrese la segunda palabra
			Escribir "Ingrese la segunda palabra: ";
			Leer palabra2;
			
			// Verificar si las palabras tienen la misma longitud
			Si Longitud(palabra1) <> Longitud(palabra2) Entonces
				// Mostrar un mensaje de error si las palabras no tienen la misma longitud
				Escribir "Error: Las palabras deben tener la misma longitud.";
			Sino
				// Inicializar la variable mensajeEncriptado como una cadena vacía
				mensajeEncriptado <- "";
				
				// Obtener la longitud de las palabras
				longitudPalabras <- Longitud(palabra1);
				
				// Iterar sobre cada posición de las palabras y construir el mensaje encriptado
				Para i <- 0 Hasta longitudPalabras Hacer
					mensajeEncriptado <- Concatenar(mensajeEncriptado, SubCadena(palabra1, i, i));
					mensajeEncriptado <- Concatenar(mensajeEncriptado, SubCadena(palabra2, i, i));
				FinPara
				
				// Mostrar el mensaje encriptado
				Escribir "Mensaje Encriptado: ", mensajeEncriptado;
			FinSi

			Esperar Tecla;
		De Otro Modo:
			si opcion <> 9 Entonces
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
	Hasta Que c=9
	Escribir "Algoritmos finalizados!!!";
FinAlgoritmo
	