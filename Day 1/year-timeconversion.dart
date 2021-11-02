import 'dart:io';
import 'dart:math';
void main()
{
double time;
int?x;
print('Enter the number of years to be converted:');
double?year=double.parse(stdin.readLineSync()!);

print('Convert year to\tvalue of x\n---------------\t-----------\nMinutes\t\t1\nHours\t\t2\nDays\t\t3\nMonths\t\t4\nSeconds\t\t5');
print('Enter the value of x as per the requirement');
x=int.parse(stdin.readLineSync()!);

switch(x)
{
case 1:
time=year*365*24*60;
print('$year YEARS = $time MINUTES');
break;

case 2:
time=year*365*24;
print('$year YEARS = $time HOURS');
break;

case 3:
time=year*365;
print('$year YEARS = $time DAYS');
break;

case 4:
time=year*12;
print('$year YEARS = $time MONTHS');
break;

case 5:
time=year*365*24*60*60;
print('$year YEARS = $time SECONDS');
break;

default:
break;
}
}