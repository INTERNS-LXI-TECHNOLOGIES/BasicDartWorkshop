import 'dart:io';

void main() {
  num DA, PF, HRA = 500;
  print('Enter The Name');
  dynamic name = stdin.readLineSync();
  print('Enter The Designation');
  dynamic designation = stdin.readLineSync();
  int? basic_pay;
  print('Enter Bassic Salarry');
  basic_pay = int.parse(stdin.readLineSync()!);
  // ignore: omit_local_variable_types
  List<dynamic> NET_SAL = [];

  if (basic_pay < 10000) {
    DA = (basic_pay * 60) / 100;
    PF = (basic_pay * 15) / 100;
    NET_SAL = [
      {basic_pay + DA + HRA - PF}
    ];
  } else {
    DA = (basic_pay * 75) / 100;
    PF = (basic_pay * 20) / 100;
    NET_SAL = [
      {basic_pay + DA + HRA - PF}
    ];
  }

  print('Name of Employee : $name');
  print('Possition is : $designation');
  print('Basic_Salarry : $basic_pay');
  print('HRA : $HRA');
  print('PF : $PF');
  print('DA : $DA');
  print('NET_SALARRY : $NET_SAL');
}
