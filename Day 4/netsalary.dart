import 'dart:io';
import 'dart:math';

void main() {
  String Name, Designation;
  double BP, HRA, PF, DA, NS;
  HRA = 500;
  print('Name of the employee');
  Name = stdin.readLineSync()!;

  print('Designation of $Name is:');
  Designation = stdin.readLineSync()!;

  print('Basic salary of $Name is');
  BP = double.parse(stdin.readLineSync()!);
  if (BP < 10000) {
    DA = BP * 0.6;
    PF = BP * 0.15;
  } else {
    DA = BP * 0.75;
    PF = BP * 0.2;
  }
  NS = BP + DA + PF;
  print('The net Salary of $Name is: $NS');
}
