// ignore_for_file: file_names, overridden_fields, prefer_initializing_formals, non_constant_identifier_names, annotate_overrides

import 'animal.dart';
import 'carnivores.dart';
import 'location.dart';

class Tiger extends Animal implements Carnivores {
  Tiger(String name, int energyLevel, int hungryLevel, int speed, int vision) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
    super.speed = speed;
    super.vision = vision;
  }
  Location homeLocation = Location(40, 40);
  Location roamLocation = Location(30, 30);
  Location currentLocation = Location(20, 20);
  @override
  Location? getLocation() {
    return roamLocation;
  }

  @override
  getName() {
    print(name);
  }

  @override
  eat() {
    print('$name  eat meat');
  }

  @override
  fight(Animal animal) {
    if (vision! > animal.vision!) {
      if (energyLevel! >= animal.energyLevel! ||
          hungryLevel! >= animal.hungryLevel!) {
        print('***********************************$name is the winner');
        animal.energyLevel != animal.energyLevel! - 10;
        animal.hungryLevel != animal.hungryLevel! - 10;
        if (animal.energyLevel! <= 0) {
          isAlive = false;
          print('$name is DEAD ');
        }
        energyLevel = energyLevel! - 5;
        hungryLevel = hungryLevel! - 5;
        if (energyLevel! <= 0) {
          isAlive = false;
          print('$name is DEAD ');
        }
      }
    } else if (animal is Carnivores && animal.vision! > vision!) {
      if (animal.energyLevel! >= energyLevel! ||
          animal.hungryLevel! >= hungryLevel!) {
        print('***********************************$name is the winner');
        animal.energyLevel = animal.energyLevel! - 5;
        animal.hungryLevel = animal.hungryLevel! - 5;
        if (animal.energyLevel! <= 0) {
          isAlive = false;
          print('$name is DEAD ');
          return true;
        }
        energyLevel = energyLevel! - 10;
        hungryLevel = hungryLevel! - 10;
        if (energyLevel! <= 0) {
          isAlive = false;
          print('$name is DEAD ');
        }
      }
    }
  }

  @override
  changeCurrentLocation(int x, int y) {
    currentLocation = Location(x, y);
  }
}
