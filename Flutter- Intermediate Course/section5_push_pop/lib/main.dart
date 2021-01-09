import 'package:flutter/material.dart';
import 'package:section5_push_pop/screens/first.dart';
import 'package:section5_push_pop/screens/second.dart';
import 'package:section5_push_pop/screens/third.dart';
void main()=>runApp(myApp());
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //uncomment all try-1 or all try-2 from first.dart, second.dart and third.dart
    //when all the try-2s are uncommented, goto first page -> third page -> previous. Reason is there is
    //nothing in the history to pop. the solution is try-3 in third.dart
    //don't fall in loop. limbo is not a reality.LOL
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