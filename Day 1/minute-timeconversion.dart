import 'dart:io';
import 'dart:math';
void main()
{
double time;
int?x;
print('Enter the number of  minutes to be converted:');
double?minute=double.parse(stdin.readLineSync()!);

print('Convert minute to\tvalue of x\n---------------\t-----------\n\nHours\t\t1\nMinutes\t\t2\nSeconds\t\t3');
print('Enter the value of x as per the requirement');
x=int.parse(stdin.readLineSync()!);

switch(x)
{
case 1:
time=minute/60;
print('$minute MINUTES= $time HOURS');
break;

case 2:
time=minute/1;
print('$minute MINUTES = $time MINUTES');
break;

case 3:
time=minute*60;
print('$minute MINUTES = $time SECONDS');
break;

default:
break;
}
}