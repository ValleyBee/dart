// NULL-SAFETY

void main(List<String> args) {
  Cat? cat = new Cat();
  Cat? newcat; // to null

  // cat = null;

  openFridge(cat);
  //openFridge(newcat);
  print(cat);
}

void openFridge(Cat? cat) {
  // cat?.helloMaster();
  final someCat = cat ?? new Dog();
  cat?.helloMaster();
}

class Cat {
  void helloMaster() {
    print('Mow-w-w-w!!!');
  }
}

class Dog {
  Dog() {
    print('Wow-wow-wow-w!!!');
  }
}
