import 'dart:io';
import 'dart:math';

void main() {
  print('Enter The Name');
  String name = stdin.readLineSync()!;
  stdout.write('string is');
  for (var i = 0; i < name.length; i++) {
    if (name[i].toUpperCase == name[i]) {
      stdout.write(name[i].toLowerCase());
    } else {
      stdout.write(name[i].toUpperCase());
    }
  }
}
