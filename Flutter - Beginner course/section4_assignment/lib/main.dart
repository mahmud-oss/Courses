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
  String _string='';
  void update(){
    setState(() {
      _string= new DateTime.now().toString();
      
    });
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 4 - Assignment')
      ),
      drawer: new Drawer(
        child: new Container(
          padding: EdgeInsets.all(70),
          //child: new RaisedButton(onPressed: update, color: Colors.red, child: new Text('Click'),),
          child: new Column(
            children: [
            new RaisedButton(onPressed: update, color: Colors.red, child: new Text('Click')),
              new RaisedButton(onPressed: ()=>Navigator.pop(context), child: new Text('Return'),)
            ],
          ),
        ),
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text(_string)
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}