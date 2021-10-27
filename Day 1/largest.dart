import 'dart:io';

void main(List<String> args) {
  int? a;
  print('Enter the First Numbers');
  a = int.parse(stdin.readLineSync()!);
  int? b;
  print('Enter the First Numbers');
  b = int.parse(stdin.readLineSync()!);
  int? c;
  print('Enter the First Numbers');
  c = int.parse(stdin.readLineSync()!);
  int? d;
  print('Enter the First Numbers');
  d = int.parse(stdin.readLineSync()!);

  if (a > b) {
    if (a > c) {
      if (a > d) {
        print('$a is big');
      } else {
        print('$d is big');
      }
    }
  } else if (b > c) {
    if (b > d) {
      print('$b is big');
    } else {
      print('$d is big');
    }
  } else if (c > d) {
    print('$c is big');
  } else {
    print('$d is big');
  }
}
