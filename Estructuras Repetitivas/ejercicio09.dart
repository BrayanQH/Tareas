/* Ejercicio 09 */

/* Programa que calcula la potencia de un número usando multiplicación repetida, 
es decir, sin utilizar la función Math.pow(). */


import 'dart:io';

void main() {
  print('Ingrese la base:');
  int base = int.parse(stdin.readLineSync()!);

  print('Ingrese el exponente:');
  int exponente = int.parse(stdin.readLineSync()!);

  int resultado = 1;

  for (int i = 1; i <= exponente; i++) {
    resultado *= base;
  }

  print('El resultado de $base^$exponente es: $resultado');
}
