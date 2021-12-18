import 'Animal.dart';
import 'Tiger.dart';

void main(List<String> args) {
  print('here');
  List<Animal> animals = [
    Tiger("skdkd", 12, 12),
  ];
  animals.add(Tiger(
    "str",
    2,
    2,
  ));
  animals.add(Tiger(
    "str2",
    23,
    24,
  ));
  animals.add(Tiger(
    "str3",
    24,
    24,
  ));
  print(animals);
}
