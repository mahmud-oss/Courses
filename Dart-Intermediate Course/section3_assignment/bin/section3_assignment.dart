
import 'package:section3_assignment/person.dart';
import 'dart:io';
import 'dart:async';
void main(List<String> arguments) {
  person p=new person(int.parse(stdin.readLineSync()));
  print(p.get_age);
}
