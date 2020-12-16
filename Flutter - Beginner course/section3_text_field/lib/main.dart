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
  String _value='';
  void _onChange(String value){
      setState(() {
        _value='Changed to: ${value}';
      });
  }
  void _onSubmit(String value){
    setState(() {
      _value='Submitted: ${value}';
    });
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section3-Textfield'),
        backgroundColor: Colors.black,
      ),
      body: new Container(
        color: Colors.purple,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY 'children' means 'children<widget>:'. widgets are generic placeholder
                      // for objects
              new Text(_value),
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'hey oi',
                  hintText: 'enter name',
                  icon: new Icon(Icons.person)  ,
                  fillColor: Colors.white
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.name,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              )
            ],
          ),
        )
       ),
    );//scaffold is a structure on which material application is going to be built
      //throw UnimplementedError();
  }
}