import'dart:io';
void main()
{
int i;
print('TOGGLE CASE');
print('Enter the sentence');
var A=stdin.readLineSync()!;

print('The toggle case of given sentence is :');
for(i=0;i<=A.length;i++)
{
if(A[i].toUpperCase()==A[i])
{
stdout.write(A[i].toLowerCase());
}
else
{
stdout.write(A[i].toUpperCase());
}
}
}