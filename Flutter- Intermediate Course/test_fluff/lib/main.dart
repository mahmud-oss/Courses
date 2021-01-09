import 'package:flutter/material.dart';
import 'package:test_fluff/screens/third.dart';
import './screens/home.dart';
import './screens/second.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        //All available pages
        '/Home': (BuildContext contrext) => new Home(),
        '/Second': (BuildContext contrext) => new Second(),
        '/Third': (BuildContext context)=>new Third()
      },
      home: new Home(), //first page displayed
    );
  }
}