import 'package:flutter/material.dart';
import 'package:section6_global_state/screens/firstpage.dart';
import 'package:section6_global_state/screens/secondpage.dart';
import 'package:section6_global_state/screens/thirdpage.dart';
import 'package:section6_global_state/code/GlobalState.dart';
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