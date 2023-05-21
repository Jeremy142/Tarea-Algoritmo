Funcion ejercicio1
	Definir a,b,c,resultado Como Reales;
	Escribir " Digite el valor de A: ";
	Leer a;
	Escribir " Digite el valor de B: ";
	Leer b;
	Escribir " Digite el valor de c: ";
	Leer c;
	resultado <- (-b + rc(b*b - 4*a*c))/(2*a);
	Escribir "El resultado es: ",resultado;
FinFuncion

Funcion ejercicio2
	Definir a,b como reales 
	Definir resultado Como Logico
	Escribir "Digite el valor de a: ";
	Leer a;
	Escribir "Digite el valor de b: ";
	Leer b;
	resultado <- ((3+5*8)<3 y ((-6/3*4)+2<2)) o (a>b)
	Escribir "El resultado es: ",resultado;
FinFuncion

Funcion ejercicio3
	Definir a,b,aux como enteros;
	Escribir "Digite el valor de a: ";
	Leer a;
	Escribir "Digite el valor de b: ";
	Leer b;
	aux <- a;
	a <- b;
	b <- aux;
	Escribir "El nuevo valor de a es: ",a;
	Escribir "El nuevo valor de b es: ",b;
FinFuncion

Funcion ejercicio4
	Definir a,b,resultado como enteros;
	a<-10;
	Escribir "Digite un numero";
	Leer b;
	resultado<- a+b;
	Escribir "El resultado es: ",resultado;
FinFuncion

Funcion ejercicio5
	Definir horas,minutos,seg Como Enteros;
	Definir horas_seg, minutos_seg como enteros;
	Escribir "Digite las horas: ";
	Leer horas;
	Escribir "Digite los minutos: ";
    Leer minutos;
	Escribir "Digite los segundos: ";
	Leer seg;
	horas_seg <- horas * 3600;
	minutos_seg <- minutos * 60;
	total_seg <- horas_seg + minutos_seg + seg;
	Escribir "Los segundos esquivalentes son: ",total_seg
FinFuncion

Funcion ejercicio6
	Definir cantidadA,cantidadB,cantidadC como enteros;
	Definir tiempoA,tiempoB,tiempoC como enteros;
	Definir tiempo_total como enteros;
	Definir horas, minutos como enteros;
	Escribir "Digite la cantidad de A: ";
	Leer cantidadA;
	Escribir "Digite la cantidad de B: ";
	Leer cantidadB;
	Escribir "Digite la cantidad de C: ";
	Leer cantidadC;
	tiempoA <- cantidadA * 5;
	tiempoB <- cantidadB * 8;
	tiempoC <- cantidadC * 6;
	tiempo_total <- tiempoA + tiempoB + tiempoC;
	horas <- trunc(tiempo_total / 60);
	minutos <- tiempo_total mod 60;
	Escribir "Se tardara ",horas,"horas y",minutos," minutos"
FinFuncion

Funcion ejercicio7
	Definir num Como Entero;
	Escribir "Digite un numero: ";
	Leer num;
	si num mod 2 = 0 Entonces
		Escribir "El numero",num," es par";
	SiNo
		Escribir "El numero",num,"es impar";
	FinSi
FinFuncion

Funcion ejercicio8
	Definir num1,num2resultado como reales;
	Escribir "Digite dos numero: ";
	Leer num1,num2;
	si num1=num2 Entonces
		resultado <- num1 * num2;
	SiNo
		si num1>num2 Entonces
			resultado <- num1 - num2;
		SiNo
			resultado <- num1 + num2;
		FinSi
	FinSi
	Escribir "El resultado es: ",resultado;
FinFuncion

Funcion ejercicio9
	Definir num como entero;
	Escribir "Digite un numero del dia de la semana(1-7: ";
	Leer num;
	Segun num Hacer
		1: Escribir "lunes";
		2: Escribir "martes";
		3: Escribir "miercoles";
		4: Escribir "jueves";
		5: Escribir "viernes";
		6: Escribir "sabado";
		7: Escribir "domingo";
		De Otro Modo:
			Escribir "Error, no existe dia para ese numero";
	FinSegun
FinFuncion

Funcion ejercicio10
	Definir i como entero;
	Para i<- 1 hasta 10 con paso 1 Hacer
		Escribir i;
	FinPara
FinFuncion

Funcion ejercicio11
	Definir i como entero;
	i <- 1;
	Mientras i= 10 Hacer
		Escribir i;
		i <- i + 1;
	FinMientras
FinFuncion

Funcion ejercicio12
	Definir i como entero;
	i <- 1;
	Repetir
		Escribir i;
		i <- i + 1;
	Hasta Que i>10; 
FinFuncion

Funcion ejercicio13
	Definir N,suma,i Como Entero;
	Escribir "Digite la cantidad de numeros a sumarse: ";
	Leer N;
	suma <- 0;
	Para i<-1 Hasta N Con Paso 1 Hacer
		suma <- suma + i;
	FinPara
	Escribir "La suma es: ",suma;
FinFuncion

Funcion ejercicio14
	Definir calificacion_promedio,calificacion_baja como real;
	Definir calificacion_suma como real;
	Definir i Como Entero;
	suma <- 0;
	calificacion_baja <- 999999;
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir i,". Digite una calificacion: ";
		Leer calificacion;
		suma <- suma + calificacion;
		si calificacion < calificacion_baja Entonces
			calificacion_baja <- calificacion;
		FinSi
	FinPara
	calificacion_promedio <- suma/10;
	Escribir "La calificacion promedio es: ",calificacion_promedio;
	Escribir "La calificacion mas baja es: ",calificacion_baja;
FinFuncion

Funcion ejercicio15
	Definir n_elementos,i,num como enteros;
	Definir suma_pares,conteo_pares como enteros;
	Definir suma_impares,conteo_impares como enteros;
	Definir promedio_impares como real; 
	Escribir "Digite la cantidad de elementos a ingresar: ";
	Leer n_elementos;
	i <- 1;
	suma_pares <- 0;
	conteo_pares <- 0;
	suma_impares <- 0;
	conteo_impares <- 0;
	Mientras i<= n_elementos Hacer
		Escribir i,". Digite un numero: ";
		Leer num;
		si num mod 2 = 0 Entonces
			suma_pares <- suma_pares + num;
			conteo_pares <- conteo_pares + 1;
		SiNo
			suma_impares <- suma_impares + num;
			conteo_impares <- conteo_impares + 1;
		FinSi
		i <- i + 1;
	FinMientras
	si conteo_pares = 0 entonces
		Escribir "No se han digitado numeros pares ";
	SiNo
		Escribir "La suma de los numeros pares es: ",suma_pares;
		Escribir "El conteo de los numeros pares es: ",conteo_pares;
	FinSi
	si conteo_impares = 0 Entonces
		Escribir "No se han digitado numeros impares ";
	SiNo
		promedio_impares <- suma_impares/conteo_impares;
		Escribir "El promedio de impares es: ",promedio_impares;
	FinSi
FinFuncion

Funcion ejercicio16
	definir a,b,c,resultado como enteros;
	a <- 10;
	b <- 20;
	Escribir "Digite un numero: ";
	Leer c;
	resultado <- a+b+c ;
	Escribir "El resultado es:",resultado;
FinFuncion

Funcion ejercicio17
	Definir a,b,resultado como enteros;
	a <- 10;
	Escribir "Digite un numero: ";
	Leer b;
	resultado <- a+b;
	Escribir "El resultado es:",resultado;
FinFuncion

Funcion  ejercicio18
	Definir a,b,resultado como enteros;
	a<-15;
	Escribir "DIgite un numero:";
	Leer b;
	resultado<- a+b;
	Escribir "El resultado es:",resultado;
FinFuncion

Funcion ejercicio19
	Definir area,radio,lon como real;
	Escribir "Digite el valor del radio:";
	Leer radio;
	area <- pi * radio * radio;
	lon <- 2 * pi * radio;
	Escribir "El area de la circunferencia es:",area;
	Escribir "La longitud es:",lon;
FinFuncion

Funcion ejercicio20
	Definir num_hombres, num_mujeres como entero;
	Definir total_estudiantes como entero;
	Definir porcentajeH, porcentajeM como entero;
	Escribir "Digite el numero de hombre: ";
	Leer num_hombres;
	Escribir "Digite el numero de mujeres: ";
	Leer num_mujeres;
	total_estudiantes <- num_hombres+num_mujeres;
	porcentajeH <- num_hombres / total_estudiantes * 100;
	porcentajeM <- num_mujeres / total_estudiantes * 100;
	Escribir "El porcentaje de hombres es: ",porcentajeH,"%";
	Escribir "El porcentaje de mujeres es:",porcentajeM,"%";
FinFuncion

Funcion ejercicio21
	Definir precio,descuento,precio_final como real;
	Escribir "Digite el precio a pagar:";
	Leer precio;
	descuento <- precio*0.15;
	precio_final <- precio - descuento;
	Escribir "El precio a pagar es de:",precio_final;
FinFuncion

Funcion ejercicio22
	Definir parcial1,parcial2,parcial3,promedioP,notasParcial como reales;
	Definir examen_final,notaExamen como reales;
	Definir notaTrabajo,notaFinalTrabajo como reales;
	Definir notaFinal como real;
	Escribir "Digite las 3 notas de los parciales:";
	Leer parcial1,parcial2,parcial3;
	promedioP <- (parcial1+parcial2+parcial3)/3;
	notasParcial <- promedioP*0.55;
	Escribir "Digite la nota del examen final: ";
	Leer examen_final;
	notaExamen <- examen_final*0.3;
	Escribir "Digite la nota del trabajo final: ";
	Leer notaTrabajo;
	notaFinalTrabajo <- notaTrabajo * 0.15;
	notaFinal <- notasParcial+notaExamen+notaFinalTrabajo;
	Escribir "La calificacion final es: ",notaFinal;
FinFuncion

Funcion ejercicio23
	Definir nota1,nota2,nota3 como reales;
	Definir promedio como real;
	Escribir "Digite las 3 calificaciones:";
	Leer nota1,nota2,nota3;
	promedio <- (nota1+nota2+nota3)/3;
	Si promedio>=73 Entonces
		Escribir "El alumno esta aprobado con:",promedio;
	SiNo
		Escribir "El alumno esta desaprobado con:",promedio;
	FinSi
FinFuncion

Funcion ejercicio24
	Definir compra como real;
	Definir descuento,precio_final como real;
	Escribir "Digite la cantidad a pagar:";
	Leer compra;
	Si compra>100 Entonces
		escuento <- compra * 0.2;
	SiNo
		descuento <- 0;
	FinSi
	precio_final <- compra - descuento;
	Escribir "Precio a pagar es de: ",precio_final;
FinFuncion

Funcion ejercicio25
	Definir num1,num2,num3 como reales;
	Escribir "Digite 3 numeros diferentes:";
	Leer num1,num2,num3;
	Si num1>num2 y num1>num3 Entonces
		Escribir "El mayor es:",num1;
	SiNo
		Si num2>num1 y num2>num3 Entonces
			Escribir "El mayor es:",num2;
		SiNo
			Escribir "El mayor es:",num3;
		FinSi
	FinSi
FinFuncion

Funcion ejercicio26
	Definir precioK,kilos,precioI como reales;
	Definir descuento,precio_final como reales;
	Escribir "Cuanto cuesta el kilo de manzanas?";
	Leer precioK;
	Escribir "Cuantos kilos de manzana a comprado?";
	Leer kilos;
	precioI <- precioK * kilos;
	Si kilos>=0 y kilos<=2 Entonces
		descuento <- 0;
	SiNo
		Si kilos>=2.01 y kilos<=5 Entonces
			descuento <- precioI*0.1;
		SiNo
			Si kilos>=5.01 y kilos<=10 Entonces
				descuento <- precioI*0.15;
			SiNo
				descuento <- precioI*0.2;
			FinSi
		FinSi
	FinSi
	precio_final <- precioI - descuento;
	Escribir "ELprecio a pagar es:",precio_final;
FinFuncion

Funcion ejercicio27
	Definir decada como entero;
	Escribir "Digite una decada";
	Leer decada;
	Segun decada Hacer
		10:
			Escribir "Bodas de ojalata";
		20:
			Escribir "Bodas de porcelana";
		30:
			Escribir "Bodas de perlas";
		40:
			Escribir "Bodas de rubi";
		50:
			Escribir "Bodas de oro";
		60:
			Escribir "Bodas de diamante";
		De Otro Modo:
			Escribir "Decada no existente";
	FinSegun
FinFuncion

Funcion ejercicio28
	Definir opcion,num,potencia,resultado Como Real;
	Definir eleccion Como Caracter;
	Repetir
		Escribir '*****Menu*****';
		Escribir 'Elija su opcion';
		Escribir '1) Potenciar su numero a una potencia X';
		Escribir '2) Resolver la raiz cuadrada de un numero';
		Leer opcion;
		Segun opcion  Hacer
			1:
				Escribir 'Escriba su base';
				Leer num;
				Escribir 'Escriba el numero que se elevar?';
				Leer potencia;
				resultado <- num^potencia;
				Escribir 'El resultado de su potencia es: ',resultado;
			2:
				Escribir 'Escriba su base';
				Leer num;
				Escribir 'El resultado de su raiz es: ',rc(num);
			De Otro Modo:
				Escribir 'no existe tal opcion';
		FinSegun
		Escribir 'Desea seguir buscando potencias o raices?';
		Leer eleccion;
	Hasta Que eleccion=='no'
FinFuncion

Funcion ejercicio29
		Definir i,par,impar Como Entero;
		par <- 0;
		impar <- 0;
		Para i<-2 Hasta 49 Hacer
			Si (i MOD 2)=0 Entonces
				par <- (par+i);
			SiNo
				impar <- (impar+i);
			FinSi
		FinPara
		Escribir 'La sumatoria de los n?meros pares entre 1 y 50 es de: ',par;
		Escribir '';
		Escribir 'La sumatoria de los n?meros impares entre 1 y 50 es de: ',impar;
FinFuncion

Funcion ejercicio30
	Definir i,num,posi,neu,nega Como Entero;
	posi <- 0;
	neu <- 0;
	nega <- 0;
	Para i<-1 Hasta 10 Hacer
		Escribir i,'. Digite un numero: ';
		Leer num;
		Si num=0 Entonces
			neu <- neu+1;
		SiNo
			Si num>0 Entonces
				posi <- posi+1;
			SiNo
				nega <- nega+1;
			FinSi
		FinSi
	FinPara
	Escribir 'Los cantidad de numeros positivos son: ',posi;
	Escribir 'Los cantidad de numeros neutros son: ',neu;
	Escribir 'Los cantidad de numeros negativos son: ',nega;
FinFuncion

Funcion ejercicio31
	Definir i,num,fact Como real;
	Repetir
		Borrar Pantalla;
		Escribir "Digite un numero no menor a cero";
		leer num;
	Hasta Que num>=0;
	fact <- 1;
	i <- 1;
	Mientras i<num Hacer
		i <- i+1;
		fact <- fact*i;
	FinMientras
	Escribir 'El factor del numero es ',fact;
FinFuncion

Funcion ejercicio32
	Definir n,i,suma, potencia como enteros
	i <- 1;
	suma <- 0;
	Escribir "Digite un numero: ";
	leer n;
	Mientras i <= n Hacer
		potencia <- i^2;
		suma <- suma + potencia;
		i <- i + 1;
	FinMientras
	Escribir "La suma es: ",suma;
FinFuncion



Algoritmo Ejercicios
	//	ejercicio1()
	//	ejercicio2()
	//	ejercicio3()
	//	ejercicio4()
	//	ejercicio5()
	//	ejercicio6()
	//	ejercicio7()
	//	ejercicio8()
	//	ejercicio9()
	//	ejercicio10()
	//	ejercicio11()
	//	ejercicio12()
	//	ejercicio13()
	//	ejercicio14()
	//	ejercicio15()
	//	ejercicio16()
	//	ejercicio17()
	//	ejercicio18()
	//	ejercicio19()
	//	ejercicio20()
	//	ejercicio21()
	//	ejercicio22()
	//	ejercicio23()
	//	ejercicio24()
	//	ejercicio25()
	//	ejercicio26()
	//	ejercicio27()
	//	ejercicio28()
	//	ejercicio29()
	//	ejercicio30()
	//	ejercicio31()
	//	ejercicio32()
	
	
	
FinAlgoritmo
