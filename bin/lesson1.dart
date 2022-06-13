void main(List<String> str) {
  /* 
  int -> duoble | toDuoble()
  duoble -> int | round()
  num -> string | toString() / toStringAsFixed()
  string -> num | parse() - Exception / tryParse() -- null
  */
  
  
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
  var number = 0;
  int intValue = 33;
  double doubleValue = 22.22;
  num value = getValueFromServer(14.13, 11);
  String s = '12.323';
  num n = 1.3;

  print(number.runtimeType);
  print(intValue.runtimeType);
  print(doubleValue.runtimeType);
  print(value);
  String str = "Learning Durt";
  int num1 = 43;


  print("${str.toUpperCase()} next varaible $num1");
  print(12.77 == double.parse('12.77'));
  print(1.toString() == '1');
  print(3.1413.toStringAsFixed(2) == '3.14');

  print('string parse to double: ${double.tryParse(s)}');

  print(n as double);
  print(intValue is double);
  print(intValue is! double);



}

num getValueFromServer(double num1, int s1) {
  return s1;
}
