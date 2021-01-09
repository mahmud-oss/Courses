import 'package:flutter/material.dart';
import 'package:section6_passing_variables/screens/first.dart';
import 'package:section6_passing_variables/screens/second.dart';
void main()=>runApp(myApp());
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Variables',
      routes: {
        '/Home':(BuildContext context)=>new First(),
        '/Second':(BuildContext context)=>new Second('')
      },
      home: new First(),
    );
  }

}