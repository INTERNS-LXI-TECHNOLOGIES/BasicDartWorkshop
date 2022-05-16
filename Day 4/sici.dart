import 'dart:io';
import 'dart:math';
void main()
{
double p=30000, r=12.5, t=10, a, si, ci;
si = (p*r*t)/100;
print('simple intrest= $si');
a = p*(pow((1 + r / 100), t));
ci = a - p;
print('\n compound intrest= $ci');
}
