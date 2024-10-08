/* Proyecto 03 */

/* Aplicación que calcula cuánto dinero recibe cada hijo dada una cantidad de dinero */

import 'dart:io';

void main() {
  print('Ingrese la cantidad total de dinero a repartir:');
  double totalDinero = double.parse(stdin.readLineSync()!);

  double josue = 0.27 * totalDinero;
  double daniel = 0.25 * totalDinero;
  double tamar = 0.85 * josue;
  double caleb = 0.23 * (josue + daniel);
  double david = totalDinero - (tamar + josue + caleb + daniel);

  print('Reparto de dinero:');
  print('Tamar: $tamar');
  print('Josué: $josue');
  print('Caleb: $caleb');
  print('Daniel: $daniel');
  print('David: $david');
}
