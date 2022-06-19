class Animal {
  final String? name;
  int? age;
  Animal({this.name, this.age});

  void helloMaster(Animal animal) {
    print("animal $name says Hello,Master!!");
  }
}
