/* Ejercicio 02 */

/* Programa que genera la secuencia de Fibonacci 
hasta un número n de términos ingresado por el usuario */

import 'dart:io';

void main() {
  print('Ingrese el número de términos de la secuencia de Fibonacci:');
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1, temp;

  print('Secuencia de Fibonacci:');
  for (int i = 1; i <= n; i++) {
    print(a);
    temp = a + b;
    a = b;
    b = temp;
  }
}
