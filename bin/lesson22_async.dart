import 'dart:async';
import 'dart:math';
import 'dart:io';

void main(List<String> args) async {
  Future<int> aFuture = aCompletely();
  print('aCompletely: ${await aFuture}');

  Future<String> bFuture = bCompletely();
  print('bCompletely: ${await bFuture}');
  // String bFuture = await bCompletely();
  // print('bCompletely: $bFuture');

  CompleteExample example = new CompleteExample();
  String cFuture = await example.cCompletely();
  print('cCompletely: ${cFuture}');

  print('from Class method: ${example.eExpl()}');

  File file = new File('file.txt');

  // var output = file.readAsString().then((value) => {
  //       if (value.contains('Jestem')) {print(value)}
  //     });

  Future<bool> fileContainsBear(String path) {
    return new File(path).readAsString().then((contents) {
      if (contents.contains('Jestem')) {
        print(contents);
        return true;
      }
      return false;
    });
  }
}

Future<int> aCompletely() {
  Completer<int> c = new Completer();

  for (int i = 0; i < 1000000; i++) {
    if (i == 645400) {
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
