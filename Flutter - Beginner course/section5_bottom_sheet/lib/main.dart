//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
void main(){
  runApp(new MaterialApp(
    home: new Myapp(),
  ));
}
class Myapp extends StatefulWidget{//body
  @override
  _State createState() => new _State();
}
class _State extends State<Myapp>{//cloth
  void _showBottom(){
    showModalBottomSheet(//Modal means when pressed, this is the only thing that will be active. All the
                          //other things will be greyed out
      context: context,
      backgroundColor: Colors.orange,
      builder: (BuildContext context){
        return new Container(
          padding: EdgeInsets.all(32),
          color: Colors.red,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Text('Bottoms up'),
              new RaisedButton(
                onPressed: ()=>Navigator.pop(context),
                child: new Text('click me'),
              )
            ],
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 5 - Bottom Sheet')
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text('Hello'),
              new RaisedButton(onPressed: _showBottom, color: Colors.grey, child: new Text('Show your bottom'),)
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}