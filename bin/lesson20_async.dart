import 'dart:async';
import 'dart:math';

class Test1 {}

void main(List<String> args) {
  List<String> list = [];
  list.add('hello');
  list.add('How are you?');
  list.add('ok');
  list.add('Buy');

  List<int> list2 = list.map((e) => e.length).toList();
  print(list2);
  List<int> array = [5, 9, 3, 8, 1];

  StreamController<String> controllerStr = new StreamController<String>();
  StreamController<int> controllerInt = new StreamController<int>();

  StreamSubscription subscription =
      controllerStr.stream.listen((item) => print(item + ' ' + item)); // This is the Trap

  list.forEach((element) {
    controllerStr.add(element);
  });
  subscription = controllerInt.stream.listen((item) => {
        if (item >= 5) {print(item)}
      });

  array.forEach((element) {
    controllerInt.add(element);
  });
}
