import 'dart:math';
import 'animal.dart';
import 'main.dart';

class Cat extends Animal {
  // Cat(String name, int age, [int? a]) : super(name, age);

  Cat(String name, int range) : super(name, range);

  @override
  void helloMaster() {
    print('animal: the cat, name: $name, says  Hello,Master!, age: $age');
  }

  // @override
  // String toString() {
  //   return 'the cat';
  // }
  void purr() {
    print('$name: Meoooooowwwww');
  }
}
