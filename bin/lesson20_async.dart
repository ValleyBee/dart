import 'dart:async';
import 'dart:ffi';

class Test1 {}

void main(List<String> args) {
  List<String> list = [];
  list.add('hello');
  list.add('How are you?');
  list.add('ok');
  list.add('Buy');
  List<int> list2 = list.map((e) => e.length).toList();

  print(list2);
}
