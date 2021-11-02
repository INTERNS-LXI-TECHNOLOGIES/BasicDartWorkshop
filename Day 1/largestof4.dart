import'dart:io';
import'dart:math';
void main()
{
int? a,b,c,d;
print('Enter the numbers:');
a=int.parse(stdin.readLineSync()!);
b=int.parse(stdin.readLineSync()!);
c=int.parse(stdin.readLineSync()!);
d=int.parse(stdin.readLineSync()!);

if(a>b)
{
	if(a>c)
	{
	if(a>d)
	print('$a is the largest number');
	}
}

else if(b>c)
{
	if(b>d)
	print('$b is the largest number');
}

else if(c>d)
print('$c is the latrgest number');

else
print('$d is the largest number');
}