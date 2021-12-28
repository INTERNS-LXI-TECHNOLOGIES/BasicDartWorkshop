import 'dart:io';

void main() {
  print("enter rows");
  int rows = int.parse(stdin.readLineSync()!);
  int i, j, numbers;

  for (i = 0; i < rows; i++) {
    numbers = 1;
    for (j = 0; j <= i; j++) {
      stdout.write('$numbers ');
      numbers++;
    }
    stdout.writeln();
  }
}
