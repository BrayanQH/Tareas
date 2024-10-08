/* Ejercicio 03 */

/* Aplicación que determina el sueldo básico, la comisión, la bonificación, 
el sueldo bruto, el descuento y el sueldo neto */

import 'dart:io';

void main() {
  const double sueldoBasico = 600.0;

  print('Ingrese el importe total vendido:');
  double importeVendido = double.parse(stdin.readLineSync()!);
  print('Ingrese el número de hijos:');
  int numeroHijos = int.parse(stdin.readLineSync()!);

  double comision = importeVendido > 15000 ? 0.07 * importeVendido : 0.05 * importeVendido;
  double bonificacion = numeroHijos < 5 ? 25 * numeroHijos : 22 * numeroHijos;

  double sueldoBruto = sueldoBasico + comision + bonificacion;
  double descuento = sueldoBruto > 3500 ? 0.15 * sueldoBruto : 0.11 * sueldoBruto;
  double sueldoNeto = sueldoBruto - descuento;

  print('Sueldo básico: S/. $sueldoBasico');
  print('Comisión: S/. ${comision.toStringAsFixed(2)}');
  print('Bonificación: S/. ${bonificacion.toStringAsFixed(2)}');
  print('Sueldo bruto: S/. ${sueldoBruto.toStringAsFixed(2)}');
  print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
  print('Sueldo neto: S/. ${sueldoNeto.toStringAsFixed(2)}');
}
