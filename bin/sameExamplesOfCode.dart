// FUNCTIONS

void main(List<String> args) {
  
 
 print('example IV\n');

// example IV
  var toup = (value) => "${value.toUpperCase()}";
  print(toup("stringtoup"));

print('\n');
// example V Named parameters of varaibles
 
  String getModel({String title = 'null', int value = 0}) 
  
  { return '$title - ${value + 10}'; }

    print(getModel(title: 'Model', value: 22));

  // String getModel2({String title2 = '', int value2 = 0}) =>
  //     print(getModel2(title2: "Model2", value2: 33));

// examole  VI  method can be with a positional optional parameter.
// A parameter wrapped by [ ] is a positional optional parameter.

  String hello(String name, String msg, [int? device]) 
  
  {var result = '$name says $msg $device';

    if (device != 'null') { result = '$result from $device'; }  return result; }

  print(hello('Alex', 'howdy'));
  print(hello('Alex', 'hello', 777));
  print('');


//  Default args

// example: default value in optional paramers
  String hello2(String name, [String name_who = 'Lucy']) {
    var result = '$name does not love $name_who';  return result;  }

  print(hello2('Alex really'));
  print(hello2('actually, Alex', 'me'));
//output 1: Alex really doesn't love Luce 2: actually,Alex doesn't love me

// Named optional parameters
// A parameter wrapped by { } is a named optional parameter.
 String hello3(String name,String surname, {int? age}){
  return "$name $surname $age";
 }
  print(hello3('Jhon', "Miller",age: 33));

// Method with named parametrs whitout return type

  hello4({String? name,String? surname,String? sex, int? age}){
    print('name of person = $name,surname of person = $surname, sex of person = $sex age of person = $age');
}
  hello4(name: 'Lucy',surname: 'Bisket', sex: 'female',age: 44);

// method ternary operator 
  String ternaryExp({String val1 = 'goodjob', String val2 = "Not good job", bool goodjob = true})
  {
    return goodjob ? val1 : val2 ; 
  }
  print(ternaryExp(goodjob: false));
  print(ternaryExp(goodjob: true));

// ternary example good formated readable 
int n = 6;
  n < 5 
      ? print('n is less or even 5')
      : print('n is bigger then 5');

/*

return_type function_name(arguments) => expression;
Lambda in Dart =>

Code example
regular way

void main() {
  findPerimeter(9, 6);
  var rectArea = findArea(10, 6);
  print('The area is $rectArea');
}

void findPerimeter(int length, int breadth) {
  var perimeter = 2 * (length * breadth);
  print('The perimeter is $perimeter');
}

int findArea(int length, int breadth) {
  return length * breadth;
}
----------------------------
same code Lambda way
 void main() {
  findPerimeter(9, 6);
  var rectArea = findArea(10, 6);
  print('The area is $rectArea');
}

void findPerimeter(int length, int breadth) =>
  print('The perimeter is ${2 * (length * breadth)}');

int findArea(int length, int breadth) =>
   length * breadth;

*/

// ************************ An example that handles int, double and String:*****************
/*
 int s = int.parse(stdin.readLineSync());

String? s = stdin.readLineSync();


  if (s != null) {
    if (int.tryParse(s) != null) {
      int n = int.parse(s);
      print('int $n'); // Or do whatever you want with your int value
    } else if (double.tryParse(s) != null) {
      double d = double.parse(s);
      print('double $d'); // Or do whatever you want with your double value
    } else {
      print('string "$s"'); // Or do whatever you want with your string value
    }
  }
*/

// ******************* How to create callback function  *************************
/*
myFunc({Function onTap}){
   onTap();
}

//invoke
myFunc(onTap: () {});

------------- If you want to pass arguments  with named parameters.

myFunc({Function onTap}){
   onTap("hello");
}

//invoke
myFunc(onTap: (String text) {});


------------------ A more exhaustive usage could be like ----------
void main() {
  callbackDemo(onCancel: () {
     print("Cancelled");
  }, onResend: () {
     print("Resend");
  }, onSuccess: (otp) {
     print(otp);
 });
}

void callbackDemo({required onSuccess(String otp), 
onCancel, onResend}) {
  onCancel();
  onResend();
  onSuccess("123456");
}


*/

/*
----------------------------- Here is an example that adds type safety to the parameters of the callback:

The callback takes in a parameter of type T, and another parameter of type int.

  void forEach(Function(T, int) cb){
    Node<T>? current = head;
    int index = 0;
    while (current != null){
      cb(current.value, index);
      index++;
      current = current.next;
    }
  }

Calling it:

list.forEach((v, i){
    print(v);
});




*/


}
