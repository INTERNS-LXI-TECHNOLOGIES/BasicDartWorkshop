import 'dart:io';

void main() {
  print('Enter First Number: ');
  int? a = int.parse(stdin.readLineSync()!);
  print('Enter Second Number: ');
  int? b = int.parse(stdin.readLineSync()!);
  print('Enter Third Number: ');
  int? c = int.parse(stdin.readLineSync()!);
  print('Enter Fourth Number: ');
  int? d = int.parse(stdin.readLineSync()!);
  int largnum = (a > b && a > c && a > d)
      ? a
      : (b > c && b > d)
          ? b
          : (c > d ? c : d);
  print('The largest number is: $largnum');
}
