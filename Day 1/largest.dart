import 'dart:io';
void main()
{
  int n1, n2, n3, n4;
  stdout.write('Enter Four Numbers');
  n1 = int.parse(stdin.readLineSync()!);
  n2 = int.parse(stdin.readLineSync()!);
  n3 = int.parse(stdin.readLineSync()!);
  n4 = int.parse(stdin.readLineSync()!);
  if (n1 > n2 && n1 > n3 && n1 > n4)
  {
    print('Largest number is $n1');
  }
  if (n2 > n3 && n2 > n4)
    {
    print('Largest number is $n2');
  }
  if (n3 > n4)
  {
    print('Largest number is $n3');
  }
}