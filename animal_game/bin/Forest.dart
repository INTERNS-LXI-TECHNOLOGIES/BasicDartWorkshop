// ignore_for_file: file_names, unnecessary_new, duplicate_ignore, unused_local_variable

import 'dart:core';
import 'dart:math';
import 'animal.dart';
import 'carnivores.dart';
import 'elephant.dart';
import 'herbivores.dart';
import 'lion.dart';
import 'location.dart';
import 'rabbit.dart';
import 'tiger.dart';

class Forest {
  String name = "Dark Forest";
  List<Animal> animalList = [];
  //Animals in the forest
  generateAnimals() {
    Tiger tiger = Tiger('sherkhan', mathRandom(45) + 20, mathRandom(65),
        mathRandom(30), mathRandom(20) + 10);
    Elephant elephant = Elephant('pambadi rajan', mathRandom(35) + 15,
        mathRandom(70), mathRandom(25), mathRandom(20) + 5, mathRandom(30) + 1);
    Rabbit rabbit = Rabbit('kuttu the rabbit', mathRandom(20) + 10,
        mathRandom(30), mathRandom(20), mathRandom(20) + 3, mathRandom(30) + 1);
    Lion lion = Lion('lion king', mathRandom(55) + 20, mathRandom(80),
        mathRandom(30), mathRandom(20) + 10);
    animalList.add(tiger);
    animalList.add(elephant);
    animalList.add(rabbit);
    animalList.add(lion);
  }

//Animal deatails
  void printDetails() {
    print(animalList[0].currentLocation.x);
    print('\n\n\t*************\n***** $name*****\n\t*******************\n');

    for (int i = 0; i < animalList.length; i++) {
      animalList[i].getName();
      animalList[i].eat();
      print('\n**');
    }
  }

//Select  random animals

  void randomFightAnimal() {
    int count = 0;
    do {
      count = 0;
      for (int i = 0; i < animalList.length; i++) {
        if (animalList[i].isAlive == true && animalList[i] is Carnivores) {
          count++;
        }
      }

      if (count != 1) {
        int x;

        do {
          x = mathRandom(animalList.length);
        } while (animalList[x].isAlive == false);

        Animal prey = _minimumRangeAnimal(animalList[x]);
        if (animalList[x] != prey && prey.isAlive == true) {
          _checkFight(animalList[x], prey);
        }
      }
    } while (count != 1);
  }

  Animal _minimumRangeAnimal(Animal animal) {
    int range = 10;
    int newRange = 0;
    Animal hount = animalList[0];

    for (int i = 0; i < animalList.length; i++) {
      if (animal != animalList[i] && animal.isAlive == true) {
        Location? location1 = animal.getLocation();
        Location? location2 = animalList[i].getLocation();
        int newRange = (((location1!.x)! - (location2!.x)!) + 1 ^
            2 + ((location1.y)! - (location2.y)!) + 1 ^
            2);
        newRange = newRange.abs();

        if (newRange < range) {
          range = newRange;
          hount = animalList[i];
        } else {
          newRange = range;
        }
      }
    }
    return hount;
  }

  //activities of animals
  void _checkFight(Animal animal1, Animal animal2) {
    bool isLuck;
    if (animal1.isAlive == true || animal2.isAlive == true) {
      print('\n\t*******${animal1.name} & ${animal2.name} are in the range');
      if (animal1 is Herbivores && animal2 is Carnivores) {
        isLuck = (animal1 as Herbivores).defendsHerb();
        if (isLuck == true) {
          _changeCurrentLocation();
        } else {
          _arrangeFight(animal1, animal2);
        }
      } else if (animal2 is Herbivores && animal1 is Carnivores) {
        isLuck = (animal2 as Herbivores).defendsHerb();
        if (isLuck == true) {
          _changeCurrentLocation();
        } else {
          _arrangeFight(animal1, animal2);
        }
      } else if (animal1 is Herbivores && animal2 is Herbivores) {
        print('they are friends');
        _changeCurrentLocation();
      } else if (animal1 is Carnivores && animal2 is Carnivores) {
        _arrangeFight(animal1, animal2);
      }
    } else {
      print('\n\t*******${animal1.name} far from ${animal2.name}');
    }
  }

  //set fight
  void _arrangeFight(Animal animal1, Animal animal2) {
    if (animal1.isAlive == true && animal2.isAlive == true) {
      if (animal1 is Carnivores || animal2 is Carnivores) {
        print('\n\t*****Fight begins*****');
        if (animal1 is Carnivores && animal2 is Herbivores) {
          (animal1 as Carnivores).fight(animal2);
          _changeCurrentLocation();
        } else if (animal2 is Carnivores && animal1 is Herbivores) {
          (animal2 as Carnivores).fight(animal1);
          _changeCurrentLocation();
        } else if (animal1 is Carnivores && animal2 is Carnivores) {
          (animal1 as Carnivores).fight(animal2);
        }
      }
      _winnerAnimal();
    }
  }

//Pickup the ultimate winner
  void _winnerAnimal() {
    int x = 0, win = 0;
    for (int i = 0; i < animalList.length; i++) {
      if (animalList[i] is Carnivores && animalList[i].isAlive == true) {
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
