/* Ejercicio 04 */

/* Programa que invierta}e los dígitos de un número entero ingresado por el usuario, 
utilizando un bucle while para extraer y reordenar los dígitos */

import 'dart:io';

void main() {
  print('Ingrese un número entero para invertir:');
  int num = int.parse(stdin.readLineSync()!);

  int invertido = 0;

  while (num != 0) {
    int digito = num % 10;
    invertido = invertido * 10 + digito;
    num ~/= 10;
  }

  print('El número invertido es: $invertido');
}
