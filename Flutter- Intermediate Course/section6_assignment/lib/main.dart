import 'package:flutter/material.dart';
import 'package:section6_assignment/screens/first.dart';
import 'package:section6_assignment/screens/second.dart';
void main(){
  return runApp(new Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Assignment',
      routes: {
        '/Home':(BuildContext context)=>new First(),
        '/Display':(BuildContext context)=>new Second(),
      },
      home: new First(),
    );
  }
}