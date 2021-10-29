import 'dart:io';
import 'dart:math';

void main() {
  List metrix1 = [];
  List metrix2 = [];
  List sum = [];
  print('enter size of metrix :');
  int? size = int.parse(stdin.readLineSync()!);
  print('enter elements in metrix :');
  for (int i = 0; i < size; i++) {
    List row1 = [];
    for (int j = 0; j < size; j++) {
      int? n1 = int.parse(stdin.readLineSync()!);
      row1.add(n1);
    }
    metrix1.add(row1);
  }
  print('first metrix : ${metrix1}');
  print('enter elements in metrix :');
  for (int i = 0; i < size; i++) {
    List row2 = [];
    for (int j = 0; j < size; j++) {
      int? n2 = int.parse(stdin.readLineSync()!);
      row2.add(n2);
    }
    metrix2.add(row2);
  }
  print('second metrix : ${metrix2}');
  for (int i = 0; i < size; i++) {
    List row3 = [];
    for (int j = 0; j < size; j++) {
      row3.add(metrix1[i][j] + metrix2[i][j]);
    }
    sum.add(row3);
    print('sum is : ${row3}');
  }
  

}

