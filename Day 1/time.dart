import 'dart:io';

void main() {
  int? min;

  print('time: ');

  min = int.parse(stdin.readLineSync()!);
  num h, m, s;

  h = (min ~/ 60);

  m = (min % 60);

  s = (m / 60);

  print('H:M:S - $h Hr:$m Min:$s MS\n');
}
