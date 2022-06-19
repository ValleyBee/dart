class Animal {
  final String? name;
  int? age;
  Animal(this.name, this.age);

  void helloMaster(Animal animal) {
    print("Animal $name says Hello,Master!!");
  }

  // @override
  // String toString() {
  //   return toString();
  // }
}
