import 'dart:io';

void main() {
  print('Enter First Number:');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter Second Number:');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Enter Third Number:');
  int num3 = int.parse(stdin.readLineSync()!);
  print('Enter Third Number:');
  int num4 = int.parse(stdin.readLineSync()!);
  int largnum = (num1 > num2 && num1 > num3 && num1 > num4)
      ? num1
      : (num2 > num3 && num2 > num4)
          ? num2
          : (num3 > num4 ? num3 : num4);
  print('The largest Number is $largnum');
}
