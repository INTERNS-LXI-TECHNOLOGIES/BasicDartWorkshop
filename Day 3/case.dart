import 'dart:io';

void main() {
  var mainString;
  mainString = stdin.readLineSync();
  print("Enter a string : ");
  mainString = stdin.readLineSync();

  print("string to lowercase : ${mainString.toLowerCase()}");
  print("string to uppercase : ${mainString.toUpperCase()}");
}
