import 'dart:io';
import 'dart:math';
void main()
{
String  Name;
double sales;
print('Name of the employee');
Name = stdin.readLineSync()!;
print('sales of $Name is');
sales = double.parse(stdin.readLineSync()!);
if (sales < 10000)
{
print('The sales of $Name is :$sales');
}
else if (sales >= 10000 && sales <300000)
{
print('the sales of $Name is :15 * 1000/100');
}
else if (sales >=300000)
{
print('the sales of $Name is :25 * 1000/100');
}
}