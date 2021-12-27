import 'dart:io';

void main() {
  print('Convert Time: ');
  int time = int.parse(stdin.readLineSync()!);
  print('Select the mode of conversion');
  print('1.Convert to hours');
  print('2. Minutes');
  print('3. Convert to Seconds');
  int mode = int.parse(stdin.readLineSync()!);
  switch (mode) {
    case 1:
      double hour = time / 60;
      print(hour);
      break;
    case 2:
      print(time);
      break;
    case 3:
      int seconds = time * 60;
      print(seconds);
      break;
    default:
      print('Invalid Choice');
  }
}
