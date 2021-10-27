import 'dart:io';
import 'dart:math';

void main() {
  num seconds, miniutes, hours, day, month;
  print("enter year");
  int? year;

  year = int.parse(stdin.readLineSync()!);
  print('select the mode');
  print('1.Seconds');
  print('2.Miniutes');
  print('3.Hours');
  print('4.Days');
  print('5.Months');

  int? mode = int.parse(stdin.readLineSync()!);
  switch (mode) {
    case 1:
      {
        seconds = year * 31536000;
        print("$seconds sec in  $year year");
      }
      break;

    case 2:
      {
        miniutes = year * 525600;
        print("$miniutes mints in  $year year");
      }
      break;

    case 3:
      {
        hours = year * 8760;
        print("$hours hrs in  $year year");
      }
      break;

    case 4:
      {
        day = year * 365;
        print("$day days in  $year year");
      }
      break;

    case 5:
      {
        month = year * 12;
        print("$month months in  $year year");
      }
      break;

    default:
      {
        print("Invalid choice");
      }
      break;
  }

  