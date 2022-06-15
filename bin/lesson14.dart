// GENERATING FUNCTION SYNC & ASYNC
void main(List<String> args) {
  List<int> result = [];

  for (int value in myGeneratorSync()) {
    result.add(value);
  }
  print(result); // [0,1,2,3,4,5,6,7,8,9]

  // for (int value in myGeneratorAsync()) {
  //   result.add(value);
  // }

  myGeneratorAsync().forEach((element) {
    print(element);
  });
}

// SYNC Generating Func
Iterable<int> myGeneratorSync() sync* {
  int k = 0;
  while (k < 10) {
    yield k++;
  }
}

Iterable<int> myGeneratorSunc2(int value) sync* {
  int k = value;
  while (k >= value) {
    if (value % 4 == 0) {
      yield --k;
    }
  }
}

// ASYNC Generation Func

Stream<int> myGeneratorAsync() async* {
  int k = 0;
  while (k < 10) {
    yield k++;
  }
}
