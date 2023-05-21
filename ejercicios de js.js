const leer = require("prompt-sync")();

class Ejercicios {
  ejercicio1() {
    let a, b, c, resultado;
    a = parseFloat(leer("Digite el valor de A: "));
    b = parseFloat(leer("Digite el valor de B: "));
    c = parseFloat(leer("Digite el valor de C: "));
    const discriminante = b * b - 4 * a * c;
    if (discriminante < 0) {
      console.log("La ecuación no tiene solución real.");
    } else {
      resultado = (-b + Math.sqrt(discriminante)) / (2 * a);
      console.log("El resultado es: " + resultado);
    }
  }

  ejercicio2() {
    let a, b;
    let resultado;
    console.log("Digite el valor de a: ");
    a = parseFloat(leer());
    console.log("Digite el valor de b: ");
    b = parseFloat(leer());
    resultado = (3 + 5 * 8 < 3 && (-6 / 3) * 4 + 2 < 2) || a > b;
    console.log("El resultado es: " + resultado);
  }

  ejercicio3() {
    let a, b, aux;
    console.log("Digite el valor de a: ");
    a = parseInt(leer());
    console.log("Digite el valor de b: ");
    b = parseInt(leer());
    aux = a;
    a = b;
    b = aux;
    console.log("El nuevo valor de a es: " + a);
    console.log("El nuevo valor de b es: " + b);
  }

  ejercicio4() {
    let a, b, resultado;
    a = 10;
    console.log("Digite un número: ");
    b = parseInt(leer());
    resultado = a + b;
    console.log("El resultado es: " + resultado);
  }

  ejercicio5() {
    let horas, minutos, seg;
    let horas_seg, minutos_seg;
    let total_seg;
    console.log("Digite las horas: ");
    horas = parseInt(leer());
    console.log("Digite los minutos: ");
    minutos = parseInt(leer());
    console.log("Digite los segundos: ");
    seg = parseInt(leer());
    horas_seg = horas * 3600;
    minutos_seg = minutos * 60;
    total_seg = horas_seg + minutos_seg + seg;
    console.log("Los segundos equivalentes son: " + total_seg);
  }

  ejercicio6() {
    let cantidadA, cantidadB, cantidadC;
    let tiempoA, tiempoB, tiempoC;
    let tiempo_total;
    let horas, minutos;
    console.log("Digite la cantidad de A: ");
    cantidadA = parseInt(leer());
    console.log("Digite la cantidad de B: ");
    cantidadB = parseInt(leer());
    console.log("Digite la cantidad de C: ");
    cantidadC = parseInt(leer());
    tiempoA = cantidadA * 5;
    tiempoB = cantidadB * 8;
    tiempoC = cantidadC * 6;
    tiempo_total = tiempoA + tiempoB + tiempoC;
    horas = Math.floor(tiempo_total / 60);
    minutos = tiempo_total % 60;
    console.log("Se tardará " + horas + " horas y " + minutos + " minutos");
  }

  ejercicio7() {
    let num;
    console.log("Digite un número: ");
    num = parseInt(leer());
    if (num % 2 === 0) {
      console.log("El número " + num + " es par");
    } else {
      console.log("El número " + num + " es impar");
    }
  }

  ejercicio8() {
    let num1, num2, resultado;
    console.log("Digite dos números: ");
    num1 = parseFloat(leer("> "));
    num2 = parseFloat(leer("> "));
    if (num1 === num2) {
      resultado = num1 * num2;
    } else {
      if (num1 > num2) {
        resultado = num1 - num2;
      } else {
        resultado = num1 + num2;
      }
    }
    console.log("El resultado es: " + resultado);
  }

  ejercicio9() {
    let num;
    console.log("Digite un número del día de la semana (1-7): ");
    num = parseInt(leer());
    switch (num) {
      case 1:
        console.log("lunes");
        break;
      case 2:
        console.log("martes");
        break;
      case 3:
        console.log("miércoles");
        break;
      case 4:
        console.log("jueves");
        break;
      case 5:
        console.log("viernes");
        break;
      case 6:
        console.log("sábado");
        break;
      case 7:
        console.log("domingo");
        break;
      default:
        console.log("Error, no existe un día para ese número");
    }
  }

  ejercicio10() {
    for (let i = 1; i <= 10; i++) {
      console.log(i);
    }
  }

  ejercicio11() {
    let i = 1;
    while (i <= 10) {
      console.log(i);
      i = i + 1;
    }
  }

  ejercicio12() {
    let i = 1;
    do {
      console.log(i);
      i = i + 1;
    } while (i <= 10);
  }

  ejercicio13() {
    let N, suma, i;
    console.log("Digite la cantidad de números a sumarse: ");
    N = parseInt(leer());
    suma = 0;
    for (i = 1; i <= N; i++) {
      suma = suma + i;
    }
    console.log("La suma es: " + suma);
  }

  ejercicio14() {
    let calificacion_promedio, calificacion_baja, calificacion_suma;
    let i;
    calificacion_suma = 0;
    calificacion_baja = Infinity;
    for (i = 1; i <= 10; i++) {
      console.log(i + ". Digite una calificación: ");
      let calificacion = parseFloat(leer());
      calificacion_suma = calificacion_suma + calificacion;
      if (calificacion < calificacion_baja) {
        calificacion_baja = calificacion;
      }
    }

    calificacion_promedio = calificacion_suma / 10;
    console.log("La calificación promedio es: " + calificacion_promedio);
    console.log("La calificación más baja es: " + calificacion_baja);
  }

  ejercicio15() {
    let n_elementos, i, num;
    let suma_pares = 0;
    let conteo_pares = 0;
    let suma_impares = 0;
    let conteo_impares = 0;
    let promedio_impares;
    console.log("Digite la cantidad de elementos a ingresar: ");
    n_elementos = parseInt(leer());
    i = 1;
    while (i <= n_elementos) {
      console.log(i + ". Digite un número: ");
      num = parseInt(leer());
      if (num % 2 === 0) {
        suma_pares += num;
        conteo_pares++;
      } else {
        suma_impares += num;
        conteo_impares++;
      }
      i++;
    }
    if (conteo_pares === 0) {
      console.log("No se han digitado números pares.");
    } else {
      console.log("La suma de los números pares es: " + suma_pares);
      console.log("El conteo de los números pares es: " + conteo_pares);
    }
    if (conteo_impares === 0) {
      console.log("No se han digitado números impares.");
    } else {
      promedio_impares = suma_impares / conteo_impares;
      console.log("El promedio de impares es: " + promedio_impares);
    }
  }

  ejercicio16() {
    let a, b, c, resultado;
    a = 10;
    b = 20;
    console.log("Digite un número: ");
    c = parseInt(leer("> "));
    resultado = a + b + c;
    console.log("El resultado es: " + resultado);
  }

  ejercicio17() {
    let a, b, resultado;
    a = 10;
    console.log("Digite un número: ");
    b = parseInt(leer("> "));
    resultado = a + b;
    console.log("El resultado es: " + resultado);
  }

  ejercicio18() {
    let a, b, resultado;
    a = 20;
    console.log("Digite un número:");
    b = parseInt(leer("> "));
    resultado = a - b;
    console.log("El resultado es: " + resultado);
  }

  ejercicio19() {
    const pi = Math.PI;
    let area, radio, lon;
    console.log("Digite el valor del radio:");
    radio = parseFloat(leer("> "));
    area = pi * radio * radio;
    lon = 2 * pi * radio;
    console.log("El área de la circunferencia es: " + area);
    console.log("La longitud es: " + lon);
  }

  ejercicio20() {
    let num_hombres, num_mujeres, total_estudiantes;
    let porcentajeH, porcentajeM;
    console.log("Digite el número de hombres:");
    num_hombres = parseInt(leer("> "));
    console.log("Digite el número de mujeres:");
    num_mujeres = parseInt(leer("> "));
    total_estudiantes = num_hombres + num_mujeres;
    porcentajeH = (num_hombres / total_estudiantes) * 100;
    porcentajeM = (num_mujeres / total_estudiantes) * 100;
    console.log("El porcentaje de hombres es: " + porcentajeH + "%");
    console.log("El porcentaje de mujeres es: " + porcentajeM + "%");
  }

  ejercicio21() {
    let precio, descuento, precio_final;
    console.log("Digite el precio a pagar:");
    precio = parseFloat(leer("> "));
    descuento = precio * 0.15;
    precio_final = precio - descuento;
    console.log("El precio a pagar es de: " + precio_final);
  }

  ejercicio22() {
    let parcial1, parcial2, parcial3, promedioP, notasParcial;
    let examen_final, notaExamen;
    let notaTrabajo, notaFinalTrabajo;
    let notaFinal;
    console.log("Digite las 3 notas de los parciales:");
    parcial1 = parseFloat(leer("> "));
    parcial2 = parseFloat(leer("> "));
    parcial3 = parseFloat(leer("> "));
    promedioP = (parcial1 + parcial2 + parcial3) / 3;
    notasParcial = promedioP * 0.55;
    console.log("Digite la nota del examen final:");
    examen_final = parseFloat(leer("> "));
    notaExamen = examen_final * 0.3;
    console.log("Digite la nota del trabajo final:");
    notaTrabajo = parseFloat(leer("> "));
    notaFinalTrabajo = notaTrabajo * 0.15;
    notaFinal = notasParcial + notaExamen + notaFinalTrabajo;
    console.log("La calificación final es: " + notaFinal);
  }

  ejercicio23() {
    let nota1, nota2, nota3;
    let promedio;
    console.log("Digite las 3 calificaciones:");
    nota1 = parseFloat(leer("> "));
    nota2 = parseFloat(leer("> "));
    nota3 = parseFloat(leer("> "));
    promedio = (nota1 + nota2 + nota3) / 3;
    if (promedio >= 70) {
      console.log("El alumno está aprobado con un promedio de: " + promedio);
    } else {
      console.log("El alumno está desaprobado con un promedio de: " + promedio);
    }
  }

  ejercicio24() {
    let compra;
    let descuento, precio_final;
    console.log("Digite la cantidad a pagar:");
    compra = parseFloat(leer("> "));
    if (compra > 100) {
      descuento = compra * 0.2;
    } else {
      descuento = 0;
    }
    precio_final = compra - descuento;
    console.log("El precio a pagar es de: " + precio_final);
  }

  ejercicio25() {
    let num1, num2, num3;
    console.log("Digite 3 números diferentes:");
    num1 = parseFloat(leer("> "));
    num2 = parseFloat(leer("> "));
    num3 = parseFloat(leer("> "));
    if (num1 > num2 && num1 > num3) {
      console.log("El mayor es: " + num1);
    } else if (num2 > num1 && num2 > num3) {
      console.log("El mayor es: " + num2);
    } else {
      console.log("El mayor es: " + num3);
    }
  }

  ejercicio26() {
    let precioK, kilos, precioI;
    let descuento, precio_final;
    precioK = 2.25;
    console.log("¿Cuántos kilos de manzanas ha comprado?");
    kilos = parseFloat(leer("> "));
    precioI = precioK * kilos;
    if (kilos >= 0 && kilos <= 2) {
      descuento = 0;
    } else if (kilos >= 2.01 && kilos <= 5) {
      descuento = precioI * 0.1;
    } else if (kilos >= 5.01 && kilos <= 10) {
      descuento = precioI * 0.15;
    } else {
      descuento = precioI * 0.2;
    }
    precio_final = precioI - descuento;
    console.log("El precio a pagar es: " + precio_final);
  }

  ejercicio27() {
    let decada;
    console.log("Digite una década del 10 al 60:");
    decada = parseInt(leer("> "));
    switch (decada) {
      case 10:
        console.log("Bodas de aluminio");
        break;
      case 20:
        console.log("Bodas de porcelana");
        break;
      case 30:
        console.log("Bodas de perlas");
        break;
      case 40:
        console.log("Bodas de rubí");
        break;
      case 50:
        console.log("Bodas de oro");
        break;
      case 60:
        console.log("Bodas de diamante");
        break;
      default:
        console.log("Decada no existente");
    }
  }

  ejercicio28() {
    function raizCuadrada(numero) {
      return Math.sqrt(numero);
    }
    let opcion, num, resultado, eleccion;
    do {
      console.log("*****Menú*****");
      console.log("Elija su opción");
      console.log("1) Potenciar su número a una potencia X");
      console.log("2) Resolver la raíz cuadrada de un número");
      opcion = parseInt(leer("> "));
      switch (opcion) {
        case 1:
          console.log("Escriba su base:");
          num = parseFloat(leer("> "));
          console.log("Escriba el número al que se elevará:");
          let potencia = parseFloat(leer("> "));
          resultado = Math.pow(num, potencia);
          console.log("El resultado de su potencia es: ", resultado);
          break;
        case 2:
          console.log("Escriba su base:");
          num = parseFloat(leer("> "));
          resultado = raizCuadrada(num);
          console.log("El resultado de su raíz es: ", resultado);
          break;
        default:
          console.log("No existe tal opción");
      }
      console.log("¿Desea seguir buscando potencias o raíces? (y/n)");
      eleccion = leer("> ");
    } while (eleccion === "y");
  }

  ejercicio29() {
    let par = 0;
    let impar = 0;
    for (let i = 2; i <= 50; i++) {
      if (i % 2 === 0) {
        par += i;
      } else {
        impar += i;
      }
    }
    console.log("La sumatoria de los números pares entre 1 y 50 es:", par);
    console.log("La sumatoria de los números impares entre 1 y 50 es:", impar);
  }

  ejercicio30() {
    let posi = 0;
    let neu = 0;
    let nega = 0;
    for (let i = 1; i <= 10; i++) {
      console.log(i + ". Digite un número: ");
      let num = parseFloat(leer("> "));
      if (num === 0) {
        neu++;
      } else if (num > 0) {
        posi++;
      } else {
        nega++;
      }
    }
    console.log("La cantidad de números positivos es: " + posi);
    console.log("La cantidad de números neutros es: " + neu);
    console.log("La cantidad de números negativos es: " + nega);
  }

  ejercicio31() {
    let num;
    do {
      num = parseInt(leer("Digite un número no menor a cero: "));
    } while (num < 0);
    let fact = 1;
    let i = 1;
    while (i <= num) {
      fact *= i;
      i++;
    }
    console.log("El factorial del número es " + fact);
  }

  ejercicio32() {
    let n, i, suma, potencia;
    i = 1;
    suma = 0;
    n = parseInt(leer("Digite un número: "));
    while (i <= n) {
      potencia = Math.pow(i, 2);
      suma += potencia;
      i++;
    }
    console.log("La suma es: " + suma);
  }
}

const ejercicios = new Ejercicios();

// ejercicios.ejercicio1();
// ejercicios.ejercicio2();
// ejercicios.ejercicio3();
// ejercicios.ejercicio4();
// ejercicios.ejercicio5();
// ejercicios.ejercicio6();
// ejercicios.ejercicio7();
// ejercicios.ejercicio8();
// ejercicios.ejercicio9();
// ejercicios.ejercicio10();
// ejercicios.ejercicio11();
// ejercicios.ejercicio12();
// ejercicios.ejercicio13();
// ejercicios.ejercicio14();
// ejercicios.ejercicio15();
// ejercicios.ejercicio16();
// ejercicios.ejercicio17();
// ejercicios.ejercicio18();
// ejercicios.ejercicio19();
// ejercicios.ejercicio20();
// ejercicios.ejercicio21();
// ejercicios.ejercicio22();
// ejercicios.ejercicio23();
// ejercicios.ejercicio24();
// ejercicios.ejercicio25();
// ejercicios.ejercicio26();
// ejercicios.ejercicio27();
// ejercicios.ejercicio28();
// ejercicios.ejercicio29();
// ejercicios.ejercicio30();
// ejercicios.ejercicio31();
// ejercicios.ejercicio32();
