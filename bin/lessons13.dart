// DIRECT RECURSION FUNCTIONS
// If a function calls itself
// INDIRECT
// If a function calls another function
void main(List<String> args) {
  // int Array
  List<int> myList = [10, 20, 30, 5, 3, 2];
  print(directFunctionInt(myList));
  // String Array
  List<String> myList2 = ['one', 'two', 'tree', 'four', 'five'];
  print(directFunctionStr(myList2));

  print('');
  myList.shuffle();
  print(indirectFunctionInt(myList));
}

// DIRECT RECURSION FUNCTION
int directFunctionInt(List<int> myList) {
  print(' inside = $myList');
  if (myList.length <= 1) {
    return myList[0];
  } else {
    return myList[0] + directFunctionInt(myList.sublist(1));
  }
}

// DIRECT RECURSION FUNCTION
String directFunctionStr(List<String> myList) {
  print('inside = $myList');
  if (myList.length <= 1) {
    return myList[0];
  } else {
    return myList[0] + directFunctionStr(myList.sublist(1));
  }
}

// INDIRECT RECURSION FUNCTION
int anotherFunction(List<int> myList) {
  return myList[0] + indirectFunctionInt(myList.sublist(1));
}

int indirectFunctionInt(List<int> myList) {
  print('inside = $myList');
  if (myList.length <= 1) {
    return myList[0];
  } else {
    return anotherFunction(myList);
  }
}
