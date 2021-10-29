import 'dart:io';

void main() {
  List matrix = [];
  print('Enter the order of matrix: ');
  int? order = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < order; i++) {
    List rows = [];
    for (int j = 0; j < order; j++) {
      print('Enter the elements of matrix: ');
      int? a = int.parse(stdin.readLineSync()!);
      rows.add(a);
    }
    matrix.add(rows);
  }
  print(matrix);
  num topSum = 0;
  for (int i = 0; i < order; i++) {
    topSum = topSum + matrix[0][i];
  }
  print('Sum of top row elements of a matrix is: ${topSum}');
  num diagonalSum = 0;
  for (int i = 0; i < order; i++) {
    diagonalSum = diagonalSum + matrix[i][i];
  }
  print('Sum of diagonal elements of a matrix: ${diagonalSum}');
  num bottomSum = 0;
  for (int i = 0; i < order; i++) {
    bottomSum = bottomSum + matrix[order - 1][i];
  }
  print('Sum of bottom row elements of a matrix: ${bottomSum}');
}
