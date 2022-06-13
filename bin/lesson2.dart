class Person {
  String name;
  int birthYear;

  
// Lambda in Dart =>
//  return_type function_name(arguments) => expression;

   bool get isAdult => (DateTime.now().year - birthYear) > 18;
  
  // the same expresion as above
   bool get isAdult2 {
    if ((DateTime.now().year - birthYear) > 18) {return true;}
    return false;
  }

  Person(this.name, this.birthYear);
}

void main() {
  Person personAdult = Person('adultUser', 1990);
  print('Hello ${personAdult.name}, you was born in ${personAdult.birthYear},you are ${personAdult.isAdult ?  'adult' : 'not adult'}');

  Person personNotAdult = Person('adultUser', 2005);
  print('Hello ${personNotAdult.name}, you was born in ${personNotAdult.birthYear}, you are ${personNotAdult.isAdult ? 'adult' : 'not adult'}');


}