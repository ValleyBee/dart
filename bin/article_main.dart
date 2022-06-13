import 'arcticle.dart';

void main(List<String> args) {
  
  // Article article = new Article();
  var article= Article(7)
  ..titleSet = 'title from set'
  ..init1();

  
  print(article.getArticleInfo().length);
// getter
  print(article.titleGet.length);
// setter
  print(article.titleGet);


}