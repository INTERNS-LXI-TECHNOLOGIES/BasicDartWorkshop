import 'dart:io';

void main() {
  int num1 = 0, num2 = 1, num3;
  print('enter the limit');
  int? limit = int.parse(stdin.readLineSync()!);
  print('fibanocci series upto $limit');
  print(num1);
  if (limit > 1) {
    print(num2);
    for (int i = 2; i < limit; i++) {
      num3 = num1 + num2;
      print(num3);
      num1 = num2;
      num2 = num3;
    }
  }
}
