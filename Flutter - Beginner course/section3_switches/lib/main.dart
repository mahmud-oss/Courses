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
  bool _value1=false;
  bool _value2=false;
  void _value1change(bool value){
    setState(() {
      _value1=value;
    });
  }
  void _value2change(bool value){
    setState(() {
      _value2=value;
    });
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 3- Switch')
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
             new Switch(value: _value1,onChanged: _value1change,),
             new SwitchListTile(
               value: _value2,
               onChanged: _value2change,
               activeColor: Colors.red,
               title: new Text(
                   'Incognito Muhaammad mode',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow
                    ),
               ),
             ) 
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}