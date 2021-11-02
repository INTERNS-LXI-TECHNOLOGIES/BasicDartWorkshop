import 'dart:io';

void main() {
  int i, j;
  for (i = 0; i < 5; i++) {
    print('\n');
    for (j = 0; j <= i; j++) {
      stdout.write('*');
    }
  }
}
