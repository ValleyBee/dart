// Stream
import 'dart:async';
//import 'dart:html';
import 'dart:math';

Stream<int> myGenerator(int last) async* {
  for (int i = 0; i <= last; i++) {
    yield i;
  }
}

Stream<int> _ints() async* {
  yield* Stream.periodic(Duration(seconds: 1), (int a) {
    return a++;
  });
}

Stream<String> _strings() async* {
  String str = "QWERTYUIOPASDFGHJKL";
  Random rn = new Random();
  yield* Stream.periodic(Duration(seconds: 1), (int a) {
    return str[rn.nextInt(str.length)];
  });
}

void createGenerator(int lastValue) async {
  Stream<int> stream = myGenerator(lastValue);
  // stream.listen((event) {
  //   print('event:$event');
  // });
  StreamSubscription subscription = stream.listen((event) {
    print('event:$event');
  });
}

void main(List<String> args) {
  Stream<int> a = _ints();
  a.listen((event) => print(event));

  print('start main');
  //createGenerator(30);
  print('stop main');
}
