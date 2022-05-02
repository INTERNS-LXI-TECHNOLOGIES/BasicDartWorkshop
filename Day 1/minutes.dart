import 'dart:io';

void main()
{
print('Enter the  minutes:');
double time = double.parse(stdin.readLineSync()!);
print('select the mode of conversion');
print('1. seconds');
print('2. Hours');
int mode = int.parse(stdin.readLineSync()!);
switch (mode) {
case 1:
double seconds = time * 60 ;
print('${time} minutes is ${seconds} seconds');
break;
case 2:
double hours = time / 60 ;
print('${time} minutes is ${hours} hours');
break;
default:
print("invalid choice");
}
}