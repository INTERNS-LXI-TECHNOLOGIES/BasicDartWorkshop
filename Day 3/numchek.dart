void main() {
  List<int> arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  int even = 0;
  int odd = 0;
  for (var i = 1; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      print('$i is even');
    } else {
      print('$i is odd');
    }
  }
}
