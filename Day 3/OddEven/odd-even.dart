import 'dart:io';

void main() {
  List arr = [];
  print('Enter the number of elements: ');
  int? n = int.parse(stdin.readLineSync()!);
  print('Enter the elements');
  for (int i = 0; i < n; i++) {
    int? element = int.parse(stdin.readLineSync()!);
    arr.add(element);
  }
  print(arr);
  List oddNumbers = [];
  List evenNumbers = [];
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      evenNumbers.add(arr[i]);
    } else {
      oddNumbers.add(arr[i]);
    }
  }
  print('Odd Numbers are : $oddNumbers');
  print('Even Numbers are : $evenNumbers');
}
