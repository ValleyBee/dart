// Async
import 'dart:async';

void main(List<String> args) {
  Future<void> user = new Future(() {
    print(' - 1st element of event loop');
  });
  Future<void> user2 = new Future(() {
    print(' - 2nd element of event loop');
  });
  Future.microtask(() {
    print('- 1st element of microtask');
  });

  scheduleMicrotask(() {
    print('- 2nd element of microtask');
  });

  print('main');
}
