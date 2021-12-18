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
    Tiger('tigu', mathRandom() + 45, mathRandom() + 65),
    Lion('lion keng', mathRandom() + 55, mathRandom() + 80),
    Elephant('pambadi rajan', mathRandom() + 50, mathRandom() + 70),
    Rabbit('kuttu the rabbit', mathRandom() + 20, mathRandom() + 30)
  ];

  void printAnimal() {
    print('\n\n\t*******Dark Forest*******\n\n\t***Animals***\n');
    for (int i = 0; i < animalList.length; i++) {
      print(animalList[i].name);
      print(animalList[i].animalEat());
    }
  }
}

int mathRandom() {
  var random = new Random();
  int r = random.nextInt(10);
  return r;
}
