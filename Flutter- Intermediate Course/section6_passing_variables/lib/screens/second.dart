import 'package:flutter/material.dart';
class Second extends StatefulWidget{
  String name;
  Second(this.name);
  _SecondState createState()=>new _SecondState(name);
}
class _SecondState extends State<Second>{
  String name;
  _SecondState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Passing Variables"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text('Hello ${name}'),
              new RaisedButton(onPressed: ()=>Navigator.of(context).pop(),child: new Text('Back'),)
            ],
          ),
        ),
      ),
    );
  }

}