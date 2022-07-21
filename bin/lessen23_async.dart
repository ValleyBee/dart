import 'dart:async';

import 'lesson17_async.dart';

void main(List<String> args) {
  Future short = shortWait();
  Future medium = mediimWait();
  short.then((value) => print(value));
  medium.then((value) => print(value));
}

Future<String> shortWait() {
  Completer c = new Completer();
  c.complete('SHORT');
  return new Future.delayed(new Duration(seconds: 0), shortCallback);
}

String shortCallback() {
  for (int i = 0; i < 50000000000; i++);
  return 'short';
}

Future<String> mediimWait() {
  return new Future.delayed(new Duration(seconds: 2)).then((_) {
    return 'medium';
  });
}
