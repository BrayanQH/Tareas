/* Ejercicio 02 */

/* Aplicación que toma la edad y el nivel del sistema de beneficio de un hombre y 
nos muestra el descuento que le hacen y su valor final a pagar */

import 'dart:io';

void main() {
  print('Ingrese su edad:');
  int edad = int.parse(stdin.readLineSync()!);
  print('Ingrese su nivel del sistema de beneficio (1, 2, 3 o otro):');
  int nivel = int.parse(stdin.readLineSync()!);

  double costo;
  double descuento = 0.0;

  if (edad > 18) {
    costo = 350.0;
    switch (nivel) {
      case 1:
        descuento = 0.40 * costo;
        break;
      case 2:
        descuento = 0.30 * costo;
        break;
      case 3:
        descuento = 0.15 * costo;
        break;
      default:
        descuento = 0.0;
    }
  } else if (edad == 18) {
    costo = 200.0;
    switch (nivel) {
      case 1:
        descuento = 0.60 * costo;
        break;
      case 2:
        descuento = 0.40 * costo;
        break;
      case 3:
        descuento = 0.20 * costo;
        break;
      default:
        descuento = 0.0;
    }
  } else {
    print('Edad no válida para la compra.');
    return;
  }

  double costoFinal = costo - descuento;

  print('Descuento aplicado: S/. ${descuento.toStringAsFixed(2)}');
  print('Valor final a pagar: S/. ${costoFinal.toStringAsFixed(2)}');
}
