import 'dart:io';

void main() {
  double pf, da, netSalary, hra = 500;
  print('Enter employee name ');
  String name = stdin.readLineSync()!;
  print('Enter your designation ');
  String designation = stdin.readLineSync()!;
  print('Enter your basic pay ');
  double basicPay = double.parse(stdin.readLineSync()!);
  if (basicPay < 10000) {
    da = basicPay * 60 / 100;
    pf = basicPay * 15 / 100;
  } else {
    da = basicPay * 75 / 100;
    pf = basicPay * 20 / 100;
  }
  netSalary = basicPay + da + hra - pf;
  print('Net Salary of $name ($designation) is $netSalary');
}
