import 'package:flutter/material.dart';

class Person {

  Future<String> getName() => Future<String>.value('person1');

  int getAge() => 10;

  void walk() {
    print("walk");
  }
}