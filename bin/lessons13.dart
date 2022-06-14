// RECURSIVES FUNCTIONS
void main(List<String> args) {}

int addFunction(List<int> myList) {
  print(myList);
  if (myList.length <= 1) {
    return myList[0];
  } else {
    return myList[0] + addFunction(myList.sublist(1));
  }
}
