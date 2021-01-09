import 'dart:async';

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
  double _value=0.0;
  Timer _timer;
  void _onPressed(){
    _value=0.0;
    _timer=new Timer.periodic(Duration(milliseconds:  1000), (timer) {
      setState(() {
        if(_value<10){
          _value=_value+0.1;
        }else{
          _timer.cancel();
        }
      });
    });
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
              new Container(
                  padding: EdgeInsets.all(20),
                  child: new CircularProgressIndicator(
                    value: _value,
                    backgroundColor: Colors.yellow,
                    valueColor: new AlwaysStoppedAnimation(Colors.red),

                  )
              ),
              new RaisedButton(
                onPressed: _onPressed,
                child: new Text('Click'),
              )
            ],
          ),

          ),
        )

    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}