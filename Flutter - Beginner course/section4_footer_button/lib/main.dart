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
  String buttonType(String value){
    setState(() {
      _value=value;
    });
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 4 - persistent footer button')
      ),
      persistentFooterButtons: [
        // new Container(
        //   child: new Column(
        //     children: [
        //       new RaisedButton(onPressed: ()=>buttonType('person button'), child: new Icon(Icons.person),),
        //       new RaisedButton(onPressed: ()=>buttonType('people button'), child: new Icon(Icons.people),),
        //       new RaisedButton(onPressed: ()=>buttonType('accessible button'), child: new Icon(Icons.accessible),)
        //     ],
        //   ),
        // )
        new RaisedButton(onPressed: ()=>buttonType('person button'), child: new Icon(Icons.person),),
        new RaisedButton(onPressed: ()=>buttonType('people button'), child: new Icon(Icons.people),),
        new RaisedButton(onPressed: ()=>buttonType('accessible button'), child: new Icon(Icons.accessible),)
      ],
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text(_value)
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}