import 'dart:io';
import 'dart:math';

void main() {
  List M = [];
  num sum = 0;
  print('Enter the number of rows:');
  int? a = int.parse(stdin.readLineSync()!);

  print('Enter the number of columns:');
  int? b = int.parse(stdin.readLineSync()!);

  print('Enter the elements of the matrix');
  for (int i = 0; i < a; i++) {
    List rows = [];
    for (int j = 0; j < b; j++) {
      int? a = int.parse(stdin.readLineSync()!);
      rows.add(a);
    }
    M.add(rows);
  }
  print(M);
  num topSum = 0;
  for (int i = 0; i <= b; i++) {
    topSum = topSum + M[0][i];
  }
  print('Sum of top row elements of a matrix is: ${topSum}');
  num diagonalSum = 0;
  for (int i = 0; i <= b; i++) {
    diagonalSum = diagonalSum + M[i][i];
  }
  print('Sum of diagonal elements of a matrix: ${diagonalSum}');
  num bottomSum = 0;
  for (int i = 0; i < a; i++) {
    bottomSum = bottomSum + M[a - 1][i];
  }
  print('Sum of bottom row elements of a matrix: ${bottomSum}');
}
