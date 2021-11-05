import 'dart:io';

void main() {
  List firstMatrix = [];
  List secondMatrix = [];
  List result = [];
  print('Enter the order of matrix:');
  int? value = int.parse(stdin.readLineSync()!);
  print('Enter the elements of first matrix: ');
  for (int i = 0; i < value; i++) {
    List row1 = [];
    for (int j = 0; j < value; j++) {
      int? a = int.parse(stdin.readLineSync()!);
      row1.add(a);
    }
    firstMatrix.add(row1);
  }
  print('First Matrix : $firstMatrix');
  print('Enter the elements of second matrix : ');
  for (int i = 0; i < value; i++) {
    List row2 = [];
    for (int j = 0; j < value; j++) {
      int? b = int.parse(stdin.readLineSync()!);
      row2.add(b);
    }
    secondMatrix.add(row2);
  }
  print('Second Matrix : ${secondMatrix}');
  for (int i = 0; i < value; i++) {
    List rows = [];
    for (int j = 0; j < value; j++) {
      rows.add(firstMatrix[i][j] + secondMatrix[i][j]);
    }
    result.add(rows);
  }
  print('Sum of the matrices : ${result}');
}
