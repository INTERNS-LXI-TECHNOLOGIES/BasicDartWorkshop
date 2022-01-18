import 'dart:math';

void main() {
  double p = 10000, r = 0.125, n = 4, t = 10;
  double simpleInterest = p * r * t;
  double cTotal = p * pow((1 + r / n), n * t);
  double compoundInterest = cTotal - p;
  double sTotal = p + simpleInterest;
  print('principal\tInterest\t\t\tTotal\t\t\tInterest Type');
  print('....................................................................');
  print('$p\t$simpleInterest\t\t\t$sTotal\t\tSimple Interest');
  print('$p\t$compoundInterest\t\t$cTotal\tCompound Interest');
}
