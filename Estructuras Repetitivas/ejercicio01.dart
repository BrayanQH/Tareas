/* Estrucuturas Repetitivas */
/* ------------------------ */

/* Ejercicio 01 */

/* Programa que solicita dos números y calcula la sumatoria de 
los números primos que existen entre esos dos valores */

import 'dart:io';

bool esPrimo(int num) {
  if (num < 2) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

void main() {
  print('Ingrese el número inicial del rango:');
  int inicio = int.parse(stdin.readLineSync()!);

  print('Ingrese el número final del rango:');
  int fin = int.parse(stdin.readLineSync()!);

  int sumatoriaPrimos = 0;

  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      sumatoriaPrimos += i;
    }
  }

  print('La sumatoria de los números primos en el rango es: $sumatoriaPrimos');
}
