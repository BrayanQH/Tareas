/* Ejercicio 08 */

/* Programa que imprime una matriz cuadrada de tamaño n x n en forma de espiral */

import 'dart:io';
import 'dart:math';

bool esArmstrong(int num) {
  int sum = 0;
  int original = num;
  int n = num.toString().length;

  while (num != 0) {
    int digito = num % 10;
    sum += pow(digito, n).toInt();
    num ~/= 10;
  }

  return sum == original;
}

void main() {
  print('Ingrese un número para verificar si es un número Armstrong:');
  int num = int.parse(stdin.readLineSync()!);

  if (esArmstrong(num)) {
    print('$num es un número Armstrong.');
  } else {
    print('$num no es un número Armstrong.');
  }
}
