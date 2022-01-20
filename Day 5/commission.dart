import 'dart:io';

void main() {
  double commision;
  print('Enter Sales :');
  int? sales = int.parse(stdin.readLineSync()!);
  if (sales < 10000) {
    print('No Commision');
  } else if (sales < 30000) {
    commision = sales * 15 / 100;
    print(commision);
  } else {
    commision = sales * 25 / 100 + 1000;
    print(commision);
  }
}
