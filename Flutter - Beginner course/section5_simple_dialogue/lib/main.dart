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
enum Answers {Yes,No,Maybe}
class _State extends State<Myapp>{//cloth
  String _string='';
  Future _askuser(BuildContext context) async{
    switch(
      await showDialog(
          context: context,
              builder: (BuildContext buildcontext) {
               return SimpleDialog(
                  title: Text('Question?'),
                  children: [
                    new SimpleDialogOption(onPressed: ()=>Navigator.pop(context, Answers.Yes),child: Text('Yes'),),
                    new SimpleDialogOption(onPressed: ()=>Navigator.pop(context, Answers.No),child: Text('No'),),
                    new SimpleDialogOption(onPressed: ()=>Navigator.pop(context, Answers.Maybe),child: Text('Maybe'),)
                  ],
                );
              },
      )
    ){
      case Answers.Yes:
        setState(() {
          _string='Yes';
          
        });
        break;
      case Answers.No:
        setState(() {
          _string='No';
        });
        break;
      case Answers.Maybe:
        setState(() {
          _string='Maybe';
        });
    }
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
              new Text(_string),
              new RaisedButton(onPressed: ()=> _askuser(context), child: new Text('hey hey hey, miho'),)
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}