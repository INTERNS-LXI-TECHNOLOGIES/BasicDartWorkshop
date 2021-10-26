import 'dart:io';

void main() {
  printPattern1();
  print('---------------------------------------');
  printPattern2();
  print('---------------------------------------');
  printPattern3();
  print('---------------------------------------');
  printPattern4();
  print('---------------------------------------');
  printPattern5();
  print('---------------------------------------');
  printPattern6();
  print('---------------------------------------');
  printPattern7();
  print('---------------------------------------');
  printPattern8();
  print('---------------------------------------');
}

void printPattern1() {
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('* ');
    }
    stdout.writeln();
  }
}

void printPattern2() {
  for (int i = 5; i > 0; i--) {
    for (int j = 0; j < i; j++) {
      stdout.write('* ');
    }
    stdout.writeln();
  }
}

void printPattern3() {
  int rows = 5;
  for (int i = 0; i < rows; i++) {
    for (int j = (rows - i); j > 1; j--) {
      stdout.write(' ');
    }
    for (int j = 0; j <= i; j++) {
      stdout.write('* ');
    }
    stdout.writeln();
  }
}

void printPattern4() {
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('${j} ');
    }
    stdout.writeln();
  }
}

void printPattern5() {
  int number = 0;
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('${++number} ');
    }
    stdout.writeln();
  }
}

void printPattern6() {
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('${i} ');
    }
    stdout.writeln();
  }
}

void printPattern7() {
  for (int i = 5; i >= 1; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write('${j} ');
    }
    stdout.writeln();
  }
}

void printPattern8() {
  for (int i = 1; i <= 5; i++) {
    for (int j = i; j <= 5; j++) {
      stdout.write('${j} ');
    }
    stdout.writeln();
  }
}
