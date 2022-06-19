import 'animal.dart';
import 'cat.dart';

void main(List<String> args) {
  List<Animal> animal = [];
  animal.add(Cat('kitty', 1));
  animal.add(Cat('Zuzzy', 2));

  animal[0].helloMaster();
}
