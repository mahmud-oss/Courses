import 'package:section2/myclass.dart';//class
import 'package:section2/animals.dart';//contructor
import 'package:section2/dog.dart';
void main(List<String> arguments) {
  //class
  myclass i=new myclass();
  i.hanlo();
  //constructor
  animals cat=new animals('bob');
  animals dog=new animals();
  cat.printing();
  dog.printing();
  //this
  dogg doggo=new dogg('fluff', 7);
  doggo.pr();
}
