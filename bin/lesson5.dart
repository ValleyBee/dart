// COLLECTIONS
void main(List<String> args) {

// LIST
   var list = [1,2,3,4];
   List<int> list2 = [1,2,3,4,5,6,7,8];

   list2.add(9);
   list2.remove(3);

   print('$list2  - length of list ${list2.length}');

   List<int> const_list = const [1,2,3,4]; // unmodifiable list
  // const_list.add(3); 


  // Spread Operator lisls
  List<int> list3 = [1,2,3];
  List<int> list4 = [5,6,7];
  List<int> list5 = [...list3,4,...list4];

  print(list5);

// dymanic type
   List list6 = [1,2343454534,'test','hello',3.14];

  print(list6);
// MAP dymanic type
print('MAP dymanic type');

 Map myMap1 = {3:'hello',true:4.5,'hello':'bye'};

 print(myMap1[3]);

// Replace element
  myMap1[3] = 'goodbye';
 
 print(myMap1[3]);

// MAP mix types Dynamic,int, String,..etc
print('MAP mix types Dynamic,int, String,..etc');
 Map <int, String> myMap2 = {1:'good',2:'not good',3:'7.7'};
 
 // only reference not make a copy of map
  var myCloneMaps = myMap2;

 // make a List with conditions
  var number1 = [1,2,3];
  var number2 = [0, if (number1.length > 2)...number1,4,5 ];
  //var number3 = [ for (var i in number1) i ];
  var number3 = [ for (int i =0 ; i < 10 ; i++) i];

  var number4 = [ if (number3.length == 10) for (var i in number1) i, 111 ];


  print('make a List number2 with IF conditions: $number2');
  print('make a List number3 with FOR: $number3');
  print('make a List witn IF and FOR: $number4');
 
 
 print('myMap2: $myMap2');
 print('myCloneMaps: $myCloneMaps');

 print('myMap2.keys: ${myMap2.keys}');
 print('myMap2.values ${myMap2.values}');
 
 myCloneMaps.clear();
 
 print('myCloneMaps after clear: $myMap2');

 //print(myCloneMaps);

// MAP 

}