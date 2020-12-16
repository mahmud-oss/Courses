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
  int _value=0;
  void _add(){
    setState(() {
      _value++;
    });
  }
  void _decrement(){
    setState(() {
      _value--;
    });
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 4 - Appbar'),
        backgroundColor: Colors.deepOrange,
        actions: [
          new IconButton(icon: new Icon(Icons.add_circle), onPressed: _add, color: Colors.black,),
          new IconButton(icon: new Icon(Icons.remove_circle), onPressed: _decrement, color: Colors.white,)
        ],

      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text(_value.toString(),style: new TextStyle(fontWeight: FontWeight.bold, fontSize:18, color: Colors.black87))
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}