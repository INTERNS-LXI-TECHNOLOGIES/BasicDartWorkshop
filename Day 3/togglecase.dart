import 'dart:io';

void main() {
  var mainString;

  print("Enter a string : ");
  mainString = stdin.readLineSync();

  print("Changing the string to lowercase : ${mainString.toLowerCase()}");
  print("Changing the string to uppercase : ${mainString.toUpperCase()}");
}
