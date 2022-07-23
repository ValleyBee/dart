import 'dart:async';
import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  Future short = shortWait();
  Future long = longWait();
  Future medium = mediumWait();

  short.then((value) => print(value));
  long.then((value) => print(value));
  medium.then((value) => print(value));

  List<int> myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  Stream<int> myStream = callStream(myList);
  myStream.listen((event) => print(event));

// Form File to Future String to Stream
  // Stream<String> fileAsStream = readfileAsStream().asStream();
  // fileAsStream.listen((event) => print(event));

// Form File to Future List to Stream
  Stream<List<int>> fileAsList = readfileAsLines();
  fileAsList.listen((event) => print(utf8.decode(event)));
}

Stream<int> callStream(Iterable<int> value) async* {
  for (int i in value) {
    yield i;
  }
}

Future<String> readfileAsStream() async {
  File file = new File("file.txt");
  return await file.readAsString();
}

Stream<List<int>> readfileAsLines() async* {
  File file = new File("file.csv");
  yield* file.openRead();
}

Future<String> shortWait() {
  Completer c = new Completer();
  c.complete('SHORT');
  return new Future<String>.delayed(new Duration(seconds: 0), shortCallback);
}

String shortCallback() {
  for (int i = 0; i < 5000000000; i++);
  return 'short';
}

Future<String> mediumWait() {
  return new Future.delayed(new Duration(seconds: 2)).then((_) {
    return 'medium';
  });
}

Future<String> longWait() async {
  Completer<String> c = new Completer();
  await new Future.delayed(new Duration(seconds: 2));
  c.complete('long');
  return c.future;
}
