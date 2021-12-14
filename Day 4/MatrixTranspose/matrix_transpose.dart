import 'dart:io';

void main() {
  List matrix = [];
  List transposeMatrix = [];
  print('Enter the order of matrix: ');
  int? order = int.parse(stdin.readLineSync()!);
  print('Enter the elements: ');
  for (int i = 0; i < order; i++) {
    List rows = [];
    for (int j = 0; j < order; j++) {
      int? a = int.parse(stdin.readLineSync()!);
      rows.add(a);
    }
    matrix.add(rows);
  }
  print('Matrix : $matrix');
  for (int i = 0; i < order; i++) {
    List rows = [];
    for (int j = 0; j < order; j++) {
      rows.add(matrix[j][i]);
    }
    transposeMatrix.add(rows);
  }
  print('Transpose of the matrix : ${transposeMatrix}');
}
