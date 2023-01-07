import 'dart:io';
import "dart:math";
void main(){
 
 print("enter your principle amount: ");
   double p_amount = double.parse(stdin.readLineSync()!);
  
 double simple_interest = p_amount*0.125*10;
 double compound_interest = p_amount* pow((1+0.125),10);
  
  print("total amount in simple interest: $simple_interest");
  
   print("total amount in compound interest: $compound_interest");{
