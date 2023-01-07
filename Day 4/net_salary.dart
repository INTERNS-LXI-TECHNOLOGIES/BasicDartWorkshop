import 'dart:io';
void main(){
 
  print("Enter name:");
  String name  = stdin.readLineSync();
  print("Enter designation:");
  String designation  = stdin.readLineSync();
  print("enter basic pay");
  int basic_pay = int.parse(stdin.readLineSync()!);

  int hra = 500;
 double  pf =0, da =0;
  
  if(basic_pay <10000){
  
    da = 0.6 * basic_pay;
    pf = 0.15 * basic_pay;}
  else if (basic_pay >= 10000){
    
    da = 0.75 * basic_pay;
       pf = 0.20 * basic_pay;}
  
  double net_salary = basic_pay + da +hra - pf;
  
  print ("net salary: $net_salary");
    
}



