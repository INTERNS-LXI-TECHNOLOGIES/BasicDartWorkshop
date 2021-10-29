import 'dart:io';
import 'dart:math';

void main() {
  double p = 1000000,
      R = 12.5,
      n = 10,
      siA = 0,
      ciA = 0,
      ciQ = 0,
      siQA = 0,
      siQ = 0,
      ciQA = 0;

  double r = R / 100;

  double si = (p * n * R) / 100.0;

  double ci = p * (pow(1 + R / 100, n) - 1);

  ciQ = p * pow((1 + (r / 4) / 100), 4 * n);

  siQ = si / 4;

  print('Simple intrest of $p for $n years is : $si');

  print('Compount intrest of $p for $n years is : $ci');

  siA = p + si;

  ciA = p + ci;

  ciQA = p + ciQ;

  siQA = p + siQ;

  print('Amount in Simple intrest : $siA');

  print('Simple intrest of $p for quaterly is : $siQ');

  print('Amount in Simple intrest for quaterly: $siQA');

  print('Amount in compount intrest : $ciA');

  print('Compount intrest of $p for quaterly is : $ciQ');

  print('Amount in compount intrest for quaterly: $ciQA');
}
