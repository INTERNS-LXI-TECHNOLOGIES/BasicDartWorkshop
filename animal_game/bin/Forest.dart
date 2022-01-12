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
  //Animals in the forest
  List<Animal> animalList = [];
  generateAnimals() {
    Tiger tiger;
    Elephant elephant;
    Rabbit rabbit;
    Lion lion;
    animalList.add(Tiger('sherkhan', mathRandom(45) + 20, mathRandom(65),
        mathRandom(30), mathRandom(20) + 5, mathRandom(40)));
    animalList.add(Elephant('pambadi rajan', mathRandom(35) + 15,
        mathRandom(70), mathRandom(25), mathRandom(20) + 3, mathRandom(30)));
    animalList.add(Rabbit('kuttu the rabbit', mathRandom(20) + 10,
        mathRandom(30), mathRandom(20), mathRandom(20) + 1, mathRandom(20)));
    animalList.add(Lion('lion king', mathRandom(55) + 20, mathRandom(80),
        mathRandom(30), mathRandom(20) + 5, mathRandom(40)));
  }
//
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
        int d = _calculateDistance(animalList[x], animalList[y]);
        actions(animalList[x], animalList[y], d);
      }
    } while (w != 1);
  }

  //
  //
  //Distance b/w animals
  int _calculateDistance(Animal animal1, Animal animal2) {
    // List? anList1 = animal1.roam();
    // List? anList2 = animal2.roam();
    // int range =
    //     ((anList1![0] - anList2![0]) ^ 2 + (anList1[1] - anList2[1]) ^ 2);
    int range = (animal1.distance! ^ 2 - animal2.distance! ^ 2) * -1;
    return range;
  }

  //
  //
  //
  //activities of animals
  void actions(Animal animal1, Animal animal2, int range) {
    if (range > 2 && animal1.isAlive == true && animal2.isAlive == true) {
      print('\n\t*******${animal1.name} & ${animal2.name} are in the range');
      if (animal1 is Herbivores) {
        int? l = (animal1.luckFact()) as int;
        if (l > 30) {
          animal1.defendsHerb(l);
          animal1.escapeHerb();
        } else {
          _arrangeFight(animal1, animal2);
        }
      } else if (animal2 is Herbivores) {
        // ignore: unnecessary_cast
        int? l = (animal2.luckFact()) as int;
        if (l > 30) {
          animal2.defendsHerb(l);
          animal2.escapeHerb();
        } else {
          _arrangeFight(animal1, animal2);
        }
      } else if (animal1 is Herbivores && animal2 is Herbivores) {
        int? l = (animal1.luckFact()) as int?;
        if (l! > 30) {
          animal1.defendsHerb(l);
          animal1.escapeHerb();
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
          animal1.fightCarnivores(animal2);
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
          animal2.fightCarnivores(animal1);
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
          animal1.fightCarnivores(animal2);
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

//

//
//
//Pickup the orginal winner
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
}

//
//
//
//
int mathRandom(int a) {
  var random = new Random();
  int r = random.nextInt(a);
  return r;
}
