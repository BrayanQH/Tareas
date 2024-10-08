/* Ejercicio 03 */

/* Programa que calcula el factorial de un número grande (por ejemplo, 100) utilizando 
estructuras repetitivas y el tipo de datos BigInt para manejar grandes números */

import 'dart:io';

void main() {
  print('Ingrese un número para calcular su factorial:');
  int num = int.parse(stdin.readLineSync()!);

  BigInt factorial = BigInt.from(1);

  for (int i = 1; i <= num; i++) {
    factorial *= BigInt.from(i);
  }

  print('El factorial de $num es: $factorial');
}
