import 'package:flutter/material.dart';
import 'package:section6_assignment/code/GlobalState.dart';
class Second extends StatefulWidget{
  _SecondState createState()=>new _SecondState();
}
class _SecondState extends State<Second>{
  GlobalState _store=GlobalState.instance;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Display'),
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  new Text(_store.get())
              ],
            ),
          ),
        )
    );
  }
}