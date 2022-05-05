import 'dart:io';
void main()
{
List<List<int>> matrix = [[1, 2, 3], [1, 2, 3], [1, 2, 3]];
int sum = 0;
for(int column =0; column < matrix.length; column++)
{
for(int row = 0; row < matrix[column].length; row++)
{
sum += matrix[column][row];
}
}
print('The sum of the matrix is $sum');
}