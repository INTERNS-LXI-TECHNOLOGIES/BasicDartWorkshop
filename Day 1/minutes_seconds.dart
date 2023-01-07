
import 'dart:io';

void main() {
  print('Enter Time in minutes: ');
  int? time = int.parse(stdin.readLineSync()!);
  print('Select the mode of conversion');
  print('1. Hours');
  print('2. Minutes');
  print('3. Seconds');

  int? mode = int.parse(stdin.readLineSync()!);
  switch (mode) {
    case 1:
      double hours = time / 60;
      print('${time} minutes is ${hours} hours');
      break;
    case 2:
      print('${time} minutes');
      break;
    case 3:
      int seconds = time * 60;
      print('${time} minutes is ${seconds} seconds');
      break;
    default:
      print('Invalid Option');
  }
}
