import "dart:io";
import "dart:async";

void main(List<String> arguments) {
  //numbers
   var a=2;
   num b=10, c=10.9;
   int d=11;
   double e=12.3;
   int test=int.parse('12');
   int test1=int.parse('12.3', onError: (source) => null);//onError is an anonymous function
   print("${a},${b},${c},${d},${e},${test},${test1}");
   //string
  String name='bryan ryan mayan';
  //substring
  String firstname=name.substring(0,5);
  print('${firstname}');
  //index finding
  int index=name.indexOf(' ');
  String lastname=name.substring(index).trim();
  print('${lastname}');
  //length
  print('${name.length}');
  //search
  print(name.contains('bryan'));
  //create a list
  List parts = name.split(' ');
  print(parts);
  print(parts[0]);
  print(parts[1]);
  //io
  String name1;
  stdout.write('hi,');
  stdout.write('what\'s your name?\r\n');
  //stdout.write('huh?\r\n');
  name1=stdin.readLineSync();
  name1.isEmpty?stderr.write('Name field empty'):print('the name is: ${name1}');
}
