// public child class of parent Animal
import 'animal.dart';

class Dog extends Animal {
  Dog(String name, int range) : super(name, range);

  @override
  void helloMaster() {
    print('animal: the dog, name: $name, says Woof Hello,Master!,age: $age');
  }
}
