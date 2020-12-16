import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:async';
void main(){
  runApp(new MaterialApp(
    home: new Myapp(),
  ));
}
class Myapp extends StatefulWidget{//body
  @override
  _State createState() => new _State();
}
class _State extends State<Myapp> {//cloth
  String _string='';
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Name here')
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text(_string),
              new TextField(onSubmitted: (String value){
                setState(() {
                  _string=value;
                });
              },),
              new RaisedButton(onPressed: (){
                SnackBar _snack=new SnackBar(content: new Text('the name is: ${_string}'),backgroundColor: Colors.black, );
                ScaffoldMessenger.of(context).showSnackBar(_snack);
              },child: new Text('click'),)
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}