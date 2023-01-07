void main(){
  

List numbers = [1,2,3,4,5,6,7,8,9,10];
  List odd_num =[];
  List even_num =[];

 for (int t = 0; t < numbers.length; t++){
   
  
  if(t % 2 == 0) {
    even_num.add(t);

   
 }
  else 
    odd_num.add(t);
    
}
   print("Odd numbers are $odd_num");
  print("Even numbers are $even_num");
}

