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
  List getLocation() {
    Location location =
        Location(random.nextInt(20) + 2, random.nextInt(20) + 2);
    List<int> loclist = [];
    loclist.add(location.x!);
    loclist.add(location.y!);
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
  roam(int x, int y) {
    int? position1, position2;
    position1 = random.nextInt(x) + 5;
    position2 = random.nextInt(y) + 5;
  }

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
}
