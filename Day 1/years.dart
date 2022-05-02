import 'dart:io';

void main() {
  print('Enter Year:');
  int year = int.parse(stdin.readLineSync()!);
  print('select the mode of conversion');
  print('1. Months');
  print('2. Days');
  print('3. Hours');
  print('4. Minutes');
  print('5. Seconds');
  int mode = int.parse(stdin.readLineSync()!);
  switch (mode) {
    case 1:
       int months = year * 12;
      print('${year} year is ${months} months');
      break;
    case 2:
       int days = year * 365;
      print('${year} year is ${days} days');
      break;
    case 3:
       int hours = year * 365 * 24;
      print('${year} year is ${hours} hours');
      break;
    case 4:
      int minutes = year * 365 * 24;
      print('${year} year is ${minutes} minutes');
      break;
    case 5:
      int seconds = year * 365 * 24 * 60 * 60;
      print('${year} year is ${seconds} seconds');
      break;
    default:
      print("invalid choice");
  }
}