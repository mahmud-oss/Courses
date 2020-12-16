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
class _State extends State<Myapp>{//cloth
  Future _showAlert(BuildContext context, String _string) async{//this 'context' variable passed down to all
                                                                //all the children. if buildcontext variable
                                                                //was not created then children 'builder'
                                                                //would have gotten the same BuildContext variable
    return showDialog(
        context: context,
        builder: (BuildContext buildcontext) {
          return AlertDialog(
            title: new Text(_string),
            actions: [
              new RaisedButton(
                onPressed: ()=>Navigator.pop(context),
                child: new Text('get out ya cocksucker'),
              )
            ],
          );
        },
    );
  }
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
              new Text('Go on - click the button'),
              new RaisedButton(
                onPressed: ()=> _showAlert(context, 'Aye, who goes there'),
                child: new Text('Hey punk'),
              )
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}