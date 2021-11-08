import 'dart:io';
import 'dart:math';

void main() {
  print('Enter the employee name:');
  dynamic name = stdin.readLineSync();
  print('Enter the basic salary of the employee');
  double? salary = double.parse(stdin.readLineSync()!);
  print('Enter the sale amount');
  double? samt = double.parse(stdin.readLineSync()!);

  if (samt < 0) {
    print('invalid input');
  } else if (samt < 10000) {
    print('Current month salary for $name is $salary');
  } else if (10000 == samt || samt < 30000) {
    salary = salary + (samt * 0.15);
    print('Current month salary for $name is $salary');
  } else {
    salary = salary + (samt * 0.25) + 1000;
    print('Current month salary for $name is $salary');
  }
}
