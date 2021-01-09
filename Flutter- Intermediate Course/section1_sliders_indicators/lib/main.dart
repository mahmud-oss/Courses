import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
  double _value=0;
  void update(double value){
    setState(() {
      _value=value;
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
              new Text('Hello'),
              new Slider(value: _value,onChanged:update,inactiveColor: Colors.white, activeColor: Colors.brown,),
              new Container(
                padding: EdgeInsets.all(20),
                child: new LinearProgressIndicator(
                  value: _value,
                  backgroundColor: Colors.yellow,
                  valueColor: new AlwaysStoppedAnimation(Colors.red),
                )
              ),

            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}