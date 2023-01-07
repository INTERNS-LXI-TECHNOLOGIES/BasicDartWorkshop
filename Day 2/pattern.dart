import 'dart:io';
void main() {
  int i, j, numbers, n = 10;
  for(i=0;i<n;i++){
    numbers = 1;
    for(j = 0; j<=i;j++)
    {
      stdout.write('$numbers ');
      numbers++;
    }
    stdout.writeln();
  }
}
  
import 'dart:io';
void main() {
  int i, j, numbers=1, n = 10;
  for(i=1;i<=n;i++){
    
    for(j = 1; j<i+1;j++)
    {
      stdout.write('${numbers++} ');
     
    }
    stdout.writeln();
  }
}



void main(){

    for(int i = 0 ; i< 7; i++){
      var stars=' ';
        for(int j = (7-i); j > 1 ;j--) {
           stars += ' ';
        }
      for(int j = 0; j <= i ;j++){
           stars +=  ' *';
    }
      print(stars);
}
}

