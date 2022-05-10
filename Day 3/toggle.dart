import 'dart:io';
void main()
{
  String mainString;
  print('Enter a String :');
  mainString = stdin.readLineSync()!;
  print('chnging the string in to lowercase : ${mainString.toLowerCase()}');
  print('chnging the string in to uppercase : ${mainString.toUpperCase()}');
}
