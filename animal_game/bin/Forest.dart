import 'dart:io';
import 'dart:core';
import 'dart:math';
import 'Animal.dart';
import 'Elephant.dart';
import 'Lion.dart';
import 'Rabbit.dart';
import 'Tiger.dart';

class Forest {
  List<Animal> animalList = [
    Tiger('tigu', mathRandom(45), mathRandom(65)),
    Lion('lion king', mathRandom(55), mathRandom(80)),
    Elephant('pambadi rajan', mathRandom(50), mathRandom(70)),
    Rabbit('kuttu the rabbit', mathRandom(20), mathRandom(30))
  ];

  void printAnimal() {
    print('\n\n\t*******Dark Forest*******\n\n\t***Animals***\n');
    for (int i = 0; i < animalList.length; i++) {
      print(animalList[i].name);
      print(animalList[i].animalEat());
      print('\n**');
    }
    //print('\n****meet**');
    animalMeet();
  }

  void animalMeet() {
    print('**meet**');
    int x, y;
    for (int i = 0; i < 5; i++) {
      x = mathRandom(3);
      y = mathRandom(3);
      if (x != y) {
        if (animalList[x].isAlive == true && animalList[y].isAlive == true) {
          print(animalList[x].name); //   animalList[y].name);
          // print('****meet**');
          print(animalList[y].name);
        }
      }
    }
  }
}

int mathRandom(int a) {
  var random = new Random();
  int r = random.nextInt(a);
  return r;
}
