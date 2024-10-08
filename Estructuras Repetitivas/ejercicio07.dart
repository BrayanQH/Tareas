/* Ejercicio 07 */

/* Programa que verifica si un número de n dígitos ingresado por el usuario es un número de Armstrong (o narcisista) */

import 'dart:io';

void main() {
  print('Ingrese el tamaño de la matriz (n):');
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));

  int valor = 1;
  int inicioFila = 0, finFila = n - 1;
  int inicioCol = 0, finCol = n - 1;

  while (inicioFila <= finFila && inicioCol <= finCol) {
    for (int i = inicioCol; i <= finCol; i++) {
      matriz[inicioFila][i] = valor++;
    }
    inicioFila++;

    for (int i = inicioFila; i <= finFila; i++) {
      matriz[i][finCol] = valor++;
    }
    finCol--;

    if (inicioFila <= finFila) {
      for (int i = finCol; i >= inicioCol; i--) {
        matriz[finFila][i] = valor++;
      }
      finFila--;
    }

    if (inicioCol <= finCol) {
      for (int i = finFila; i >= inicioFila; i--) {
        matriz[i][inicioCol] = valor++;
      }
      inicioCol++;
    }
  }

  print('Matriz en forma de espiral:');
  for (List<int> fila in matriz) {
    print(fila);
  }
}
