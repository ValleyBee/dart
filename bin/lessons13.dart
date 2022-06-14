// RECURSIVES FUNCTIONS
void main(List<String> args) {
  List<int> myList = [10, 20, 30, 5, 3, 2];
  print(addFunction(myList));
}

int addFunction(List<int> myList) {
  print(' inside = $myList');
  if (myList.length <= 1) {
    return myList[0];
  } else {
    return myList[0] = addFunction(myList.sublist(1));
  }
}
