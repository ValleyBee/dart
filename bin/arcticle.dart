class Article {
  String? _title;
  String? _body;
  int num = 0;


  Article(this.num);

  void init1() {
    return print('this is method form class Article $num');
  }

 
 String get titleGet {return _title!;}
 //(_title = 'title to uppercase'.toUpperCase());}

  String getArticleInfo() {
    
     return ('title: $_title body: $_body');
  }



  void set titleSet(String value) { _title = value; }

}

typedef FunctionDef = String Function();