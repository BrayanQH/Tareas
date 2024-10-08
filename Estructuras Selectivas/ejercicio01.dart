/* Estructuras Selectivas */
/* ---------------------- */

/* Ejercicio 01 */

/* Aplicación que determina cuánto de rebaja recibirá un estudiante sobre
su pensión actual y a cuánto asciende su nueva pensión */

import 'dart:io';

void main() {
  const Map<String, double> pensiones = {
    'A': 550.0,
    'B': 500.0,
    'C': 460.0,
    'D': 400.0,
  };

  print('Ingrese la categoría del alumno (A, B, C, D):');
  String categoria = stdin.readLineSync()!.toUpperCase();
  print('Ingrese el promedio ponderado:');
  double promedio = double.parse(stdin.readLineSync()!);

  double pensionActual = pensiones[categoria]!;
  double descuento = 0.0;

  if (promedio >= 0 && promedio <= 13.99) {
    descuento = 0.0;
  } else if (promedio >= 14.00 && promedio <= 15.99) {
    descuento = 0.10 * pensionActual;
  } else if (promedio >= 16.00 && promedio <= 17.99) {
    descuento = 0.12 * pensionActual;
  } else if (promedio >= 18.00 && promedio <= 20.00) {
    descuento = 0.15 * pensionActual;
  }

  double nuevaPension = pensionActual - descuento;

  print('Monto de la rebaja: S/. ${descuento.toStringAsFixed(2)}');
  print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
}
