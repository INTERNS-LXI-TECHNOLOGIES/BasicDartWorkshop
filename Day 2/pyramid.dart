import 'dart:io';
void main()
{
int numberofStars = 5;
for(int i = 0 ; i< numberofStars; i++)
{
for(int k=0; k < numberofStars-i; k++)
{
stdout.write(" ");
}
for(int j = 0; j<= i; j++)
{
stdout.write("* ");
}
print('');
}
}