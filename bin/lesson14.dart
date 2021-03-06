// GENERATING FUNCTION SYNC & ASYNC

/*
 Synchronous Generator in Dart
 The synchronous generator returns an iterable object i.e. it returns the collection of values, or “elements”, that can be accessed sequentially.


Asynchronous Generator in Dart
The asynchronous generator returns a stream object. A Stream provides a way to receive a sequence of events. Each event is either a data event, also called an element of the stream, or an error event, which is a notification that something has failed. 
 */

void main(List<String> args) {
  List<int> result = [];

  for (int value in myGeneratorSync()) {
    result.add(value);
  }
  print(result); // [0,1,2,3,4,5,6,7,8,9]
  result.clear();

  for (int value in myGeneratorSync2(30)) {
    result.add(value);
  }

  print(result); // 0, 4, 8, 12, 16, 20, 24, 28
  result.clear();

  for (int value in myGeneratorSync3(30)) {
    result.add(value);
  }

  print(result); // 28, 24, 20, 16, 12, 8, 4, 0
  result.clear();

  // Output byforEach instead of for loop

  myGeneratorSync3(30).forEach((element) {
    result.add(element);
  });
  print('forEach = $result');

  result.clear();

// if we need to get list from Generating Iterable.

// got a list from Iterable output
  List<int> result1 = myGeneratorSync2(20).toList();
  print('got a list  = $result1');

// ASYNC
  // myGeneratorAsync().forEach((element) {
  //   print(element);
  // });

  // listen a Stream
  Stream<int> sequens = myGeneratorAsync(30);
  sequens.listen((event) {
    print(event);
  });
}

// SYNC Generating Func
Iterable<int> myGeneratorSync() sync* {
  int k = 0;
  while (k < 10) {
    yield k++;
  }
}

// SYNC Generating Func 2
Iterable<int> myGeneratorSync2(int value) sync* {
  int k = 0;
  while (k < value) {
    if (k % 4 == 0) {
      yield k;
    }
    k++;
  }
}

// SYNC Generating Func 3  (reverse)
Iterable<int> myGeneratorSync3(int value) sync* {
  while (value >= 0) {
    if (value % 4 == 0) {
      yield value;
    }
    value--;
  }
}

// ASYNC Generation Func

Stream<int> myGeneratorAsync(int value) async* {
  int k = 0;
  while (k < value) {
    if (k % 2 == 0) {
      yield k;
    }
    k++;
  }
}
