void main(List<String> args) {
  
// exmp 1
  void createListAndMap({ List<int> list = const[1,2,3,4,5], Map<String, String> games = const {
    'first': 'The man who fellt down',
    'two': 'Star trek: new strange worlds',
    'three': 'From' }}) 
    {
      print('List by default : $list');
      print('Dict by default : $games');
    }

// exmp 2
  void createListAndMap_2(List<int> list, Map<String,int> student_id){
print('$list');
print('Students = $student_id');
  }


// exp 3

  void createListAndMap_3(Map<String,int> studentId) {
    print('student name = ${studentId.keys}');
    print('student id = ${studentId.values}');
  }

createListAndMap();

createListAndMap_2([5,4,3,2,1], {'Petrov' : 2343, 'Jhon':3434});

createListAndMap_3({'Alex': 2323});




}