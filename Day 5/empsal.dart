import 'dart:io';
import 'dart:math';

void main() {
  //List Employee = [];
  double sal = 0;
  print('Enter the Name of Employee: ');
  dynamic name = stdin.readLineSync();
  //Employee.add(name);
  print('Enter Sale Amount');
  int? Sale_amount = int.parse(stdin.readLineSync()!);
  int i = Sale_amount;
  if (Sale_amount < 10000) {
    print('work hard to get mch more');
    print('status of salary is : $Sale_amount');
  } else if (i < 30000) {
    sal = i * 15 / 100;
    print('work hard for more happiness');
    print('status of salary is : $sal');
  } else if (i >= 30000) {
    sal = 1 * 25 / 100;
    double amt = sal + 1000;
    print('work hard and keep it up');
    print('status of salary is : $amt');
  } else {
    print('keep trying');
  }
}
