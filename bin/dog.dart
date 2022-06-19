import 'animal.dart';

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void helloMaster() {
    print('animal: the dog, name: $name, says Hello,Master!');
  }
}
