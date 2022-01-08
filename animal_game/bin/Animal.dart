// ignore_for_file: file_names, unused_import

import 'carnivores.dart';
import 'herbivores.dart';

abstract class Animal {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  bool isFight = true;
  bool isAlive = true;
  eat();

  getName() {}

  List? distance();

  bool? fightAnimals();

  luckFact() {}

  escapeHerb() {}

  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  fightCarnivores(Animal ani) {}
  int? vision() {}

  int? defendsHerb() {}
}
