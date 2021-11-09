import 'dart:io';
import 'dart:math';
void main()
{
print('MATRIX ADDITION');

List M1=[];
List M2=[];
List SUM=[];

print('Enter the number of Rows');
int?m=int.parse(stdin.readLineSync()!);

print('Enter the number of Columns');
int?n=int.parse(stdin.readLineSync()!);

print('Enter the elements of matrix 1');

for(int a=0;a<m;a++)
{
List L1=[];
for(int b=0;b<n;b++)
{
int?e1=int.parse(stdin.readLineSync()!);
L1.add(e1);
}
M1.add(L1);
}

print('Enter the elements of matrix 2');

for(int a=0;a<m;a++)
{
List L2=[];
for(int b=0;b<n;b++)
{
int?e2=int.parse(stdin.readLineSync()!);
L2.add(e2);
}
M2.add(L2);
}

print('First Matrix is : $M1');
print ('Second Matrix is : $M2');

for(int a=0;a<m;a++)
{
List L3=[];
for(int b=0;b<n;b++)
{
L3.add(M1[a][b]+M2[a][b]);
}
SUM.add(L3);
}
print('The sum of given 2 matrices is:$SUM');

}