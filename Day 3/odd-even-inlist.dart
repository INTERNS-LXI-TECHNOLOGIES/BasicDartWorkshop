import'dart:io';
import'dart:math';
void main()
{
List a=[];
int i;

print('Enter the size of the list');
int?size=int.parse(stdin.readLineSync()!);

print('Enter the numbers in the list');

for(i=0;i<size;i++)
{
int?e=int.parse(stdin.readLineSync()!);
a.add(e);
}

for(i=0;i<size;i++)
{
if(a[i]%2==0)
{
print('${a[i]} is an even number.');
}
else
{
print('${a[i]} is an odd number.');
}
}
}