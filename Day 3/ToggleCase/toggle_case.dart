import 'dart:io';

void main() {
  print('Enter the string: ');
  String string = stdin.readLineSync()!;
  stdout.write('Toggled string is ');
  for (var i = 0; i < string.length; i++) {
    if (string[i].toUpperCase() == string[i]) {
      stdout.write(string[i].toLowerCase());
    } else {
      stdout.write(string[i].toUpperCase());
    }
  }
}
