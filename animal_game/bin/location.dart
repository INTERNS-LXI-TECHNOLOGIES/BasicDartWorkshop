import 'dart:math';

class Location {
  Random random = Random();
  int x = 0;
  int y = 0;
  Location(int x, int y) {
    this.x = random.nextInt(x) + 5;
    this.y = random.nextInt(y) + 5;
  }
}
