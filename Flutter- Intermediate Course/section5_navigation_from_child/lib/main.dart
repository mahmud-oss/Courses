import 'package:flutter/material.dart';
import 'package:section5_navigation_from_child/screens/first.dart';
import 'package:section5_navigation_from_child/screens/second.dart';
import 'package:section5_navigation_from_child/screens/third.dart';
void main()=>runApp(myApp());
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Main',
      routes: {
        '/First': (BuildContext context)=>new FirstPage(),
        '/Second': (BuildContext context)=>new SecondPage(),
        '/Third': (BuildContext context)=>new ThirdPage()
      },
      home: new FirstPage(),
    );
  }
}