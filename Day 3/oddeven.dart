import 'dart:io';
void main()
{
  List numbers = [1, 4, 7, 10, 15, 20, 26 , 33];
  
    for (var e in numbers)
    {
      if(e % 2 == 0)
      {
        print('$e is even');
      }
    else print('$e is odd');
    }
    }
