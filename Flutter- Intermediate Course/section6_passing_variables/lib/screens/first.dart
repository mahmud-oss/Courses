import 'package:flutter/material.dart';
import 'package:section6_passing_variables/screens/second.dart';
class First extends StatefulWidget{
  _FirstState createState()=>new _FirstState();
}
class _FirstState extends State<First>{
  TextEditingController _name;
  @override
  void initState(){
    _name=new TextEditingController();
  }
  void _onPressed(){
    Navigator.push(context, new MaterialPageRoute(
      builder: (BuildContext context) {
        return new Second(_name.text);
      },
    ));
  }
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
              new TextField(
                controller: _name,
                decoration: new InputDecoration(labelText: "Enter your name here"),
              ),
              new RaisedButton(
                  onPressed: _onPressed,
                child: new Text("Next"),
              )
            ],
          ),
        ),
      ),
    );
  }

}