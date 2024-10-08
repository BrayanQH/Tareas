/* Ejercicio 06 */

/* Programa que encuentra y muestra todos los números perfectos entre 1 y 10,000 */

import 'dart:io';

bool esPerfecto(int num) {
  int suma = 0;
  for (int i = 1; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      suma += i;
    }
  }
  return suma == num;
}

void main() {
  print('Números perfectos entre 1 y 10,000:');
  for (int i = 1; i <= 10000; i++) {
    if (esPerfecto(i)) {
      print(i);
    }
  }
}
