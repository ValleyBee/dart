import 'dart:async';
import 'dart:math';

void main(List<String> args) async {
  Future<int> aFuture = aCompletely();
  print(await aFuture);

  Future<String> bFuture = bCompletely();
  print(await bFuture);
  // String bFuture = await bCompletely();
  // print(bFuture);

  CompleteExample example = new CompleteExample();
  String cFuture = await example.cCompletely();
  print(cFuture);

  print('from simple method: ${example.eExpl()}');
}

Future<int> aCompletely() {
  Completer<int> c = new Completer();

  for (int i = 0; i < 100000; i++) {
    if (i == 6454) {
      c.complete(i);
      break;
    }
  }
  return c.future;
}

Future<String> bCompletely() {
  Completer<String> c = new Completer();
  List<String> s = ['a', 'b', 'c', 'd', 'e', 'f', 'g'];
  s.forEach((element) {
    if (element == 'e') {
      c.complete(element);
    }
  });
  return c.future;
}

class CompleteExample {
  Future<String> cCompletely() {
    Completer<String> c = new Completer();
    String str = "QWERTYUIOPASDFGHJKL";
    Random rn = new Random();
    c.complete(str[rn.nextInt(str.length)]);
    return c.future;
  }

  String eExpl() {
    String str = "QWERTYUIOPASDFGHJKL";
    Random rn = new Random();
    return str[rn.nextInt(str.length)];
  }
}
