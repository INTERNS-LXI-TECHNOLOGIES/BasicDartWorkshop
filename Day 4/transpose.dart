import 'dart:io';
import 'dart:math';

void main() {
  print('TRANSPOSE OF A MATRIX');
  List M = [];
  List T = [];
  print('Enter the number of rows:');
  int? a = int.parse(stdin.readLineSync()!);

  print('Enter the number of columns:');
  int? b = int.parse(stdin.readLineSync()!);

  print('Enter the elements of the matrix');
  for (int i = 0; i < a; i++) {
    List L = [];
    for (int j = 0; j < b; j++) {
      int? e = int.parse(stdin.readLineSync()!);
      L.add(e);
    }
    M.add(L);
  }
  print('The given matrix is :$M');

  for (int i = 0; i < a; i++) {
    List L = [];
    for (int j = 0; j < b; j++) {
      L.add(M[j][i]);
    }
    T.add(L);
  }
  print('The Transpose of the given matrix is :$T');
}
