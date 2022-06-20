import 'dart:math';
import 'animal.dart';
import 'main.dart';

class Cat extends Animal {
  Cat(String name, int, age) : super(name, age);

  @override
  void helloMaster() {
    print('animal: the cat, name: $name, says Hello,Master!');
  }

  // @override
  // String toString() {
  //   return 'the cat';
  // }

  void purr() {
    print('$name: Meoooooowwwww');
  }

  int randomAge() {
    Random age = new Random();
    return age.nextInt(10);
  }
}
