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
  void setValue(double value){
    setState(() {
      _value=value;
    });
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 3 - Slider')
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text('value: ${(_value * 100).round()}'),
              new Slider(value: _value, onChanged: setValue, activeColor: Colors.red, inactiveColor: Colors.yellow, )
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}