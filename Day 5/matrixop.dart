import'dart:io';
import'dart:math';
void main()
{
List M=[];
num sum=0;
print('Enter the number of rows:');
int?a=int.parse(stdin.readLineSync()!);

print('Enter the number of columns:');
int?b=int.parse(stdin.readLineSync()!);

print('Enter the elements of the matrix');
for(int i=0;i<a;i++)
{
List L=[];
for(int j=0;j<b;j++)
{
int?e=int.parse(stdin.readLineSync()!);
L.add(e);
}
M.add(L);
}
print ('The given matrix is : $M');

for(int i=1;i<=b;i++)
{
sum=sum+M[1][i];
}

num dsum=0;

for(int i=1;i<=a;i++)
{
for(int j=1;j<=b;j++)
{
if(i==j)
{
dsum=dsum + M[i][j];
}
}
}
print('B. Sum of diagonal elements of a matrix is $sum');

num bsum=0;
int i=1;
while(i==a)
{
for(int j=1;j<=b;j++)
{
bsum=bsum + M[i][j];
}
i++;
}
print('C. Sum of bottom row elements of a matrix is $sum');

}