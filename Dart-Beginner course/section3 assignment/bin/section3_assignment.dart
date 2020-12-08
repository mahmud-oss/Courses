import 'dart:io';
//import 'dart:async';

void main(List<String> arguments) {
  List<String> people = ['Bryan', 'Ryan', 'Jordan', 'Nickelson'];
  int index;
  index=int.parse(stdin.readLineSync());
  print(people.elementAt(index));


}
