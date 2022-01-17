import 'dart:io';

void main() {
  num DA, PF, HRA = 500;
  print('Enter Basic Salary');
  int BASIC_PAY = int.parse(stdin.readLineSync()!);
  List<dynamic> NET_SAL = [];
  if (BASIC_PAY < 10000) {
    DA = (BASIC_PAY * 60) / 100;
    PF = (BASIC_PAY * 15) / 100;
    NET_SAL = [
      {BASIC_PAY + DA + HRA - PF}
    ];
  } else {
    DA = (BASIC_PAY * 75) / 100;
    PF = (BASIC_PAY * 20) / 100;
    NET_SAL = [
      {BASIC_PAY + DA + HRA - PF}
    ];
  }

  print('Basic_Salary : $BASIC_PAY');
  print('HRA : $HRA');
  print('PF : $PF');
  print('DA : $DA');
  print('NET_SALARRY : $NET_SAL');
}
