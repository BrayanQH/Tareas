/* Ejercicio 05 */

/* Programa que solicita dos matrices de tamaño N x N (donde N es proporcionado por el usuario) 
y luego se realiza la suma de las dos matrices utilizando bucles anidados for */

import 'dart:io';

void main() {
  print('Ingrese el tamaño de las matrices NxN:');
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz1 = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> matriz2 = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> suma = List.generate(n, (_) => List.filled(n, 0));

  print('Ingrese los valores de la primera matriz:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      matriz1[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print('Ingrese los valores de la segunda matriz:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      matriz2[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      suma[i][j] = matriz1[i][j] + matriz2[i][j];
    }
  }

  print('La suma de las matrices es:');
  for (int i = 0; i < n; i++) {
    print(suma[i]);
  }
}
