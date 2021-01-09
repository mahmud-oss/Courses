import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:section6_assignment/code/GlobalState.dart';
class First extends StatefulWidget{
  _FirstState createState()=>new _FirstState();
}
class _FirstState extends State<First>{
  TextEditingController _controller;
  GlobalState _store=GlobalState.instance;
  @override
  void initState() {
    _controller=new TextEditingController();
    _store.set(' ');
  }
  void _onPressed(){
    setState(() {
      _store.set(_controller.text);
    });
    Navigator.of(context).pushNamed('/Display');
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new TextField(
                controller: _controller,
              ),
              new RaisedButton(
                child: new Text('Show'),
                onPressed: _onPressed,
              )
            ],
          ),
        ),
      )
    );
  }
}