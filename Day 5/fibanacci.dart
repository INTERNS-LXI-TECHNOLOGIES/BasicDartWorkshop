import 'dart:io';

void main() {
  int n1 = 0, n2 = 1, n3;
  print('Enter the limit of the series: ');
  int? limit = int.parse(stdin.readLineSync()!);
  print('Fibanocci Series up to $limit is :');
  print(n1);
  if (limit > 1) {
    print(n2);
    for (int i = 2; i < limit; i++) {
      n3 = n1 + n2;
      print(n3);
      n1 = n2;
      n2 = n3;
    }
  }
}