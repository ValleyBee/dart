import 'animal.dart';

class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void helloMaster(Animal animal) {
    print('animal: $animal, name: $name, says Hello,Master!');
  }

  @override
  String toString() {
    return 'the cat';
  }

  void purr() {
    print('$name: Meoooooowwwww');
  }
}
