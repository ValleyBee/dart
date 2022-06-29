class BigBox {
  int _id = 1;
  late String s;
  String _s = 'initialication of _s Superlass';
  BigBox(this.s) {
    // this.i = i;
    // this.str = str;
    print('1. Superslass BigBox has counstuctor with arg String s: \n$s');
  }

  void info(String srt) {
    print('5. Hello, I`m method from Superclass, a String str passed to me from subclass:\n$srt');
  }
}

class SmallBox extends BigBox {
  int _id = 2;
  SmallBox(int i, String str)
      : super('  - 2.This is String s as arg returned from constructor of Subclass to Superclass') {
    print(
        '3. Counstr-r Subclass SmallBox its loc var-s i:`$i`, str:`$str`,and instanse _id:`$_id`');
    super.info(
        '   - 6.This is String str for method of Superclas called from Subclass and its values `super._id,s`: ${super._id}');
  }
}

// Abscract class

abstract class Person {
  int _id = 1;
  late String s;
  void info(String s);
}

class Employee extends Person {
  // int _id = 2;  can't be
  int _id2 = 2;

  Employee(int _id2) {
    print('1. Counstructor Subclass Employee its local varaibles $_id2');
  }

  @override
  set _id(int __id) {
    super._id = __id;
  }

  @override
  void info(String s) {
    print('');
  }
}

// end

// interface
class Vehicle {
  late int _id;
  late String str;
  void info(String s) {
    print('method from Vehicle');
  }

  Vehicle(int id, String s) {
    this._id = id;
    this.str = s;
    print('this is constructor Vehicle $_id, $str');
  }
}

class Car implements Vehicle {
  late int _id;
  late String str;

  Car(int id, String s) {
    this._id = id;
    this.str = s;
    print('this is constructor Car $_id, $str');
  }

  void info2() {
    print('$_id');
  }

  @override
  void info(String s) {
    print('overrided method from Vehicle');
  }
}

void main(List<String> args) {
  SmallBox sb = new SmallBox(3, 'str');
  print('${sb._s}');
  print('*' * 50);

//************/

  Employee emp = new Employee(3);
  print('instanse var abstract class ${emp._id}');
  print('instanse var subclass ${emp._id2}');
  print('*' * 50);
//************/
  Car car = new Car(2, 'ss');
  Vehicle vh = new Vehicle(1, 's');
  car.info2();
}
