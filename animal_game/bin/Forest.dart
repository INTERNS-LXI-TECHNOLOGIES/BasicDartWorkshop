// ignore_for_file: file_names, unnecessary_new, duplicate_ignore, unused_local_variable

import 'dart:core';
import 'dart:ffi';
import 'dart:math';
import 'animal.dart';
import 'carnivores.dart';
import 'elephant.dart';
import 'herbivores.dart';
import 'lion.dart';
import 'rabbit.dart';
import 'tiger.dart';

class Forest {
  List<Animal> animalList = [];
  //Animals in the forest
  generateAnimals() {
    Tiger tiger = Tiger('sherkhan', mathRandom(45) + 20, mathRandom(65),
        mathRandom(30), mathRandom(20) + 5);
    Elephant elephant = Elephant('pambadi rajan', mathRandom(35) + 15,
        mathRandom(70), mathRandom(25), mathRandom(20) + 3);
    Rabbit rabbit = Rabbit('kuttu the rabbit', mathRandom(20) + 10,
        mathRandom(30), mathRandom(20), mathRandom(20) + 1);
    Lion lion = Lion('lion king', mathRandom(55) + 20, mathRandom(80),
        mathRandom(30), mathRandom(20) + 5);
    animalList.add(tiger);
    animalList.add(elephant);
    animalList.add(rabbit);
    animalList.add(lion);
  }

//Animal deatails
  void printDetails() {
    print('\n\n\t*******Dark Forest*******\n\n\t***Animals***\n');

    for (int i = 0; i < animalList.length; i++) {
      animalList[i].getName();
      animalList[i].eat();
      print('\n**');
    }
  }

//Select  random animals

  void selectAnimals() {
    int w = 0;
    do {
      w = 0;
      for (int i = 0; i < animalList.length; i++) {
        if (animalList[i].isAlive == true &&
            animalList[i] is Carnivores &&
            animalList[i].isFight == true) {
          w++;
        }
      }

      if (w != 1) {
        int x, y;

        do {
          x = mathRandom(animalList.length);
          y = mathRandom(animalList.length);
        } while (animalList[x].isFight == false ||
            x == y ||
            animalList[x].isAlive == false ||
            animalList[y].isAlive == false);
        int range = _calculateDistance(animalList[x], animalList[y]);
        _checkFight(animalList[x], animalList[y], range);
      }
    } while (w != 1);
  }

  //Distance b/w animals
  int _calculateDistance(Animal animal1, Animal animal2) {
    List? listanim1 = animal1.getLocation();
    List? listanim2 = animal2.getLocation();
    int range = ((listanim1![0] - listanim2![0]) ^
            2 + (listanim1[0]! - listanim2[1]!) ^
            2) +
        2;
    return range;
  }

  //activities of animals
  void _checkFight(Animal animal1, Animal animal2, int range) {
    if (range > 5 && animal1.isAlive == true && animal2.isAlive == true) {
      print('\n\t*******${animal1.name} & ${animal2.name} are in the range');
      if (animal1 is Herbivores) {
        int? luck1 = ((animal1 as Herbivores).luckFact()) as int;
        if (luck1 > 20) {
          (animal1 as Herbivores).defendsHerb(luck1);
          (animal1 as Herbivores).escapeHerb();
          _changeCurrentLocation();
        } else {
          _arrangeFight(animal1, animal2);
        }
      } else if (animal2 is Herbivores) {
        // ignore: unnecessary_cast
        int? l = (animal2.luckFact()) as int;
        if (l > 20) {
          (animal2 as Herbivores).defendsHerb(l);
          (animal2 as Herbivores).escapeHerb();
          _changeCurrentLocation();
        } else {
          _arrangeFight(animal1, animal2);
        }
      } else if (animal1 is Herbivores && animal2 is Herbivores) {
        int? l = (animal1.luckFact()) as int?;
        if (l! > 20) {
          (animal1 as Herbivores).defendsHerb(l);
          (animal1 as Herbivores).escapeHerb();
          _changeCurrentLocation();
        }
      } else {
        _arrangeFight(animal1, animal2);
      }
    } else {
      print('\n\t*******${animal1.name} far from ${animal2.name}');
    }
  }

  //set fight

  void _arrangeFight(Animal animal1, Animal animal2) {
    if (animal1.isAlive == true && animal2.isAlive == true) {
      //
      if (animal1.fightAnimals() == true || animal2.fightAnimals() == true) {
        print('\n\t*****Fight begins*****');
        if (animal1 is Carnivores &&
            animal1.fightAnimals() == true &&
            animal1.vision! >= animal2.vision!) {
          (animal1 as Carnivores).fightCarnivores(animal2);
          _changeCurrentLocation();
          animal2.energyLevel = animal2.energyLevel! - 10;
          animal2.hungryLevel = animal2.hungryLevel! - 10;
          if (animal2.energyLevel! <= 0) {
            animal2.isAlive = false;
            print('${animal2.name} is DEAD');
          } else {
            print('${animal2.name} isnot DEAD');
          }
        } else if (animal2 is Carnivores &&
            animal2.fightAnimals() == true &&
            animal2.vision! >= animal1.vision!) {
          (animal2 as Carnivores).fightCarnivores(animal1);
          _changeCurrentLocation();
          animal1.energyLevel = animal1.energyLevel! - 10;
          animal1.hungryLevel = animal1.hungryLevel! - 10;
          if (animal1.energyLevel! <= 0) {
            animal1.isAlive = false;
            print('${animal1.name} is DEAD');
          } else {
            print('${animal1.name} isnot DEAD');
          }
        } else if (animal1 is Carnivores &&
            animal2 is Carnivores &&
            animal1.vision! >= animal2.vision!) {
          (animal1 as Carnivores).fightCarnivores(animal2);
          _changeCurrentLocation();
          animal2.energyLevel = animal2.energyLevel! - 10;
          animal2.hungryLevel = animal2.hungryLevel! - 10;
          if (animal2.energyLevel! <= 0) {
            animal2.isAlive = false;
          }
        } else {
          print('**************************************************No Fights');
        }
      } else {
        print('\n******they are friends*****\n');
      }
      _winnerAnimal();
    } else {
      print('oooooooppppppppppssssssssss');
    }
  }

//Pickup the ultimate winner
  void _winnerAnimal() {
    int x = 0, win = 0;
    for (int i = 0; i < animalList.length; i++) {
      if (animalList[i] is Carnivores &&
          animalList[i].isAlive == true &&
          animalList[i].fightAnimals() == true &&
          animalList[i].energyLevel! > 8) {
        x++;
        win = i;
      }
    }

    if (x == 1) {
      print('***********++++++++++--------*********//////');
      print('${animalList[win].name}  is the winner winner');
    }
  }

  _changeCurrentLocation() {
    for (int i = 0; i < animalList.length; i++) {
      if (animalList[i].isAlive == true) {
        animalList[i]
            .changeCurrentLocation(mathRandom(30) + 2, mathRandom(30) + 2);
      }
    }
  }
}

int mathRandom(int a) {
  var random = new Random();
  int r = random.nextInt(a);
  return r;
}
