void main() {
  var Numbers = List.of({14, 51, 23, 45, 6, 3, 22, 1});
  var evenNumbers = Numbers.where((number) => number.isEven);
  evenNumbers = evenNumbers.toList()..sort();
  print("this is Even numbers ");
  print(evenNumbers);
  var oddNumbers = Numbers.where((number) => number.isOdd);
  oddNumbers = oddNumbers.toList()..sort();
  print("this is odd numbers ");
  print(oddNumbers);
}
