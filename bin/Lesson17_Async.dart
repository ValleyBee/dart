// Async
import 'dart:async';
//import 'dart:io';

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

  first();
  second();
  third();
}

void first() {
  print("First");
}

second() async {
  await four();
  for (int i = 0; i < 100; i++);
  print("second");
}

third() {
  print('third');
}

Future four() async {
  for (int i = 0; i < 10000000; i++);
  print("four");
}

/* output
without await four()
--------------------
main
First 
four
second
third
- 1st element of microtask
- 2nd element of microtask
 - 1st element of event loop
 - 2nd element of event loop

with await four()
----------------
main
First
four
third
- 1st element of microtask
- 2nd element of microtask
second
 - 1st element of event loop
 - 2nd element of event loop


 */
