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
  Location getLocation() {
    return roamLocation;
  }

  @override
  getName() {
    print(name);
  }

  @override
  eat() {
    print('eat meet');
  }

  var random = new Random();

  @override
  bool fightCarnivores(Animal ani) {
    if (vision! > ani.vision!) {
      if (energyLevel! >= ani.energyLevel! ||
          hungryLevel! >= ani.hungryLevel!) {
        print('***********************************$name is the winner');
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  @override
  afterFight(bool isWin) {
    if (isWin == true) {
      energyLevel = energyLevel! - 5;
      hungryLevel = hungryLevel! - 5;
      if (energyLevel! <= 0) {
        isAlive == false;
        print('$name is DEAD ');
      }
    } else if (isWin == false) {
      energyLevel = energyLevel! - 10;
      hungryLevel = hungryLevel! - 10;
      if (energyLevel! <= 0) {
        isAlive == false;
        print('$name is DEAD ');
      }
    }
  }

  @override
  changeCurrentLocation(int x, int y) {
    currentLocation = Location(x, y);
  }
}
