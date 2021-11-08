import 'dart:io';
import 'dart:math';

void main() {
  print('FIBONACCI SERIES');
  print('Enter the number of elements:');
  int? num = int.parse(stdin.readLineSync()!);
  int t1, t2, t3, i;
  t1 = 0;
  t2 = 1;
  print('$t1\n$t2');
  for (i = 1; i <= num; i++) {
    t3 = t1 + t2;
    print('$t3');
    t1 = t2;
    t2 = t3;
  }
}
