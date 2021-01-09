import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'authenticator.dart';
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
  bool _isAuthenticated;
  void _onAuthenticated(bool value){
    setState(() {
      _isAuthenticated=value;
    });
  }
  @override
  void initState(){
    setState(() {
      _isAuthenticated=false;
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
              new Authenticator(onAuthenticated: _onAuthenticated,),
              new Text('Authenticated ${_isAuthenticated}')
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}