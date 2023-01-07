import 'dart:io';

void main() {
  List firstMatrix = [];
  List secondMatrix = [];
  List result = [];
  print('Enter the order of matrix: ');
  int? order = int.parse(stdin.readLineSync()!);
  print('Enter the elements of first matrix : ');
  for (int i = 0; i < order; i++) {
    List rows1 = [];
    for (int j = 0; j < order; j++) {
      int? a = int.parse(stdin.readLineSync()!);
      rows1.add(a);
    }
    firstMatrix.add(rows1);
  }
  print('First Matrix : $firstMatrix');
  print('Enter the elements of second matrix : ');
  for (int i = 0; i < order; i++) {
    List rows2 = [];
    for (int j = 0; j < order; j++) {
      int? b = int.parse(stdin.readLineSync()!);
      rows2.add(b);
    }
    secondMatrix.add(rows2);
  }
  print('Second Matrix : ${secondMatrix}');
  for (int i = 0; i < order; i++) {
    List rows = [];
    for (int j = 0; j < order; j++) {
      rows.add(firstMatrix[i][j] + secondMatrix[i][j]);
    }
    result.add(rows);
  }
  print('Sum of the matrices : ${result}');
}

