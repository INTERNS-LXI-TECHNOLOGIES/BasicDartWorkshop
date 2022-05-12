void main()
{
int i, j, numbers, rows = 5;
for(i = 0;i< rows; i++)
{
numbers = 1;
for(j = 0; j<=i;j++)
{
stdout.write(' ');
}
  for(int k=0;k<=rows-1-i;k++){
    
  stdout.write('$numbers');
  }
  stdout.writeln();
}
}