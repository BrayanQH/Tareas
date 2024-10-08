/* Proyecto 02 */

/* Programa que determina el área total y el volumen de un cilindro, dados su radio y altura */

import 'dart:io';
import 'dart:math';

void main() {
  print('Ingrese el valor del radio del cilindro:');
  double radio = double.parse(stdin.readLineSync()!);

  print('Ingrese el valor de la altura del cilindro:');
  double altura = double.parse(stdin.readLineSync()!);

  double area = 2 * pi * radio * (radio + altura);
  double volumen = pi * pow(radio, 2) * altura;

  print('Área total del cilindro: $area');
  print('Volumen del cilindro: $volumen');
}
