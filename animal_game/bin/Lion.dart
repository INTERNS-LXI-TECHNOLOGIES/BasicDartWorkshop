// ignore_for_file: file_names, prefer_initializing_formals

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'carnivores.dart';
import 'location.dart';

class Lion extends Animal implements Carnivores {
  Lion(
    String name,
    int energyLevel,
    int hungryLevel,
    int speed,
    int vision,
  ) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
    super.speed = speed;
    super.vision = vision;
  }

  @override
  Location homeLocation = Location(40, 40);
  @override
  Location roamLocation = Location(30, 30);
  @override
  // ignore: overridden_fields
  Location currentLocation = Location(20, 20);
  @override
  List getLocation() {
    List<int> loclist = [];
    loclist.add(roamLocation.x!);
    loclist.add(roamLocation.y!);
    return loclist;
  }

  @override
  getName() {
    print(name);
  }

  @override
  eat() {
    print('eat meet');
  }

  @override
  bool fightAnimals() {
    bool isFight = true;
    return isFight;
  }

  var random = new Random();

  @override
  fightCarnivores(Animal ani) {
    if (energyLevel! >= ani.energyLevel! || hungryLevel! >= ani.hungryLevel!) {
      print('***********************************$name is the winner');
      energyLevel = energyLevel! - 5;
      hungryLevel = hungryLevel! - 5;
      if (energyLevel! <= 0) {
        isAlive == false;
      }
    } else if (ani is Carnivores && ani.energyLevel! > energyLevel! ||
        ani.hungryLevel! > hungryLevel!) {
      print('***********************************${ani.name} is the winner');
    }
  }

  @override
  changeCurrentLocation(int x, int y) {
    currentLocation = Location(x, y);
  }
}
