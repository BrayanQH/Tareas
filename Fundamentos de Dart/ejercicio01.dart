/* Fundamentos de Dart */
/* ------------------- */

/* Proyecto 01 */

/* Programa que calcula el área yel perímetro de un cuadrado */


import 'dart:io';

void main() {
  print('Ingrese el valor del lado del cuadrado:');
  double lado = double.parse(stdin.readLineSync()!);

  double area = lado * lado;
  double perimetro = 4 * lado;

  print('Área del cuadrado: $area');
  print('Perímetro del cuadrado: $perimetro');
}
