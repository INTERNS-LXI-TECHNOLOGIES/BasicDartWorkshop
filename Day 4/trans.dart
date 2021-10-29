import 'dart:io';

void main() {
  List metrix = [];
  List trancepose = [];
  print('Enter order of metrix:');
  int? order = int.parse(stdin.readLineSync()!);
  print('enter elements :');
  
  for (int i = 0; i < order; i++) {
    List row1 = [];
    for (int j = 0; j < order; j++) {
      int? n = int.parse(stdin.readLineSync()!);
      row1.add(n);
    }
    metrix.add(row1);
  }
  print('metrix : $metrix');
  for (int i = 0; i < order; i++) {
    List row1 = [];
    for (int j = 0; j < order; j++) {
      row1.add(metrix[j][i]);
    }
    trancepose.add(row1);
  }
  print('Trancepose of metrix : ${trancepose}');
}
