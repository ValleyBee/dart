import 'dart:async';
import 'dart:math';
import 'dart:convert';

class Test1 {}

void main(List<String> args) {
  List<String> list = [];
  list.add('hello');
  list.add('How are you?');
  list.add('ok');
  list.add('Buy');

  void len(int a) {
    List<int> list2 = list.map((e) => e.length).toList();
    print(list2);
  }

  Stream<String> aa;

  List<int> array = [5, 9, 3, 8, 1];

  StreamController<String> controllerStr = new StreamController<String>();
  StreamController<int> controllerInt = new StreamController<int>();
  Stream<int> stInt = controllerInt.stream;
  Stream<String> stStr = controllerStr.stream;
//  StreamSubscription subscription = st.listen((item) => print(item)); // This is the Trap
  StreamSubscription subscription = stInt.listen(len);
  StreamSubscription subscription2 = stStr.listen((item) => print(item));

  // subscription = controllerStr.stream;

  // list.forEach((element) {

  // });

  // controllerStr.addError('Oops');
  // subscription = controllerInt.stream.listen((item) => {
  //       if (item >= 5) {print(item)}
  //     });

  array.forEach((element) {
    controllerInt.sink.add(element);
    //  controllerInt.add(element);
  });

  subscription.cancel;

  //fileContents.then((String value) => print(value));

//  subscription2.cancel;
}
