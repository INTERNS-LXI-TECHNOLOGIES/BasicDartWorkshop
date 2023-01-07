import "dart:math";
import 'dart:io';

void main(){

  print("enter the sales amount");
  double sales = double.parse(stdin.readLineSync()!);
  print("sales amount: $sales");

  double com = 0;
  
   if (sales < 10000){
     com = 0;
   }
  
  else if (sales >= 10000 && sales <= 30000){
     
    com = sales* 0.15;
  }
  
  else if (sales> 30000){
    com = sales*0.25 + 1000;
  }
  
  print("commision is: $com");
}
