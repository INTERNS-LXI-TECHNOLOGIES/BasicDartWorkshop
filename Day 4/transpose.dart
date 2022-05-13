import 'dart:io';
import 'dart:math';
void main()
{
List matrix=[];
List transpose=[];
print('Enter the Number of rows');
int?row=int.parse(stdin.readLineSync()!);
print('Enter the Number of columns');
int?column=int.parse(stdin.readLineSync()!);
print('enter the elements of the matrix');
for(int i=0;i<row;i++)
{
List row1=[];
for(int j=0;j<column;j++)
{
int?a=int.parse(stdin.readLineSync()!);
row1.add(a);
}
matrix.add(row1);
}
print('The given matrix is : $matrix');
for(int i=0;i<row;i++)
{
List row1=[];
for(int j=0;j<column;j++)
{
row1.add(matrix[j][i]);
}
transpose.add(row1);
}
print('The transpose of a matrix is :$transpose');
}

