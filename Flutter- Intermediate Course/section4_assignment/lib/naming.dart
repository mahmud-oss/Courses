import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class Naming extends StatefulWidget{//body
  Naming({Key key, this.onChanged});
  final ValueChanged<String> onChanged;
  @override
  _NamingState createState() => new _NamingState(onChanged: onChanged);
}
class _NamingState extends State<Naming>{//cloth
  TextEditingController _controller;
  _NamingState({Key key, this.onChanged});
  final ValueChanged<String> onChanged;
  @override
  void initState(){
    _controller=new TextEditingController();
  }
  void _onPressed(String value){
    onChanged(value);
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Card(
      color: Colors.greenAccent,
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new TextField(
              decoration: new InputDecoration(labelText: "Name"),
              controller: _controller,
              onSubmitted: _onPressed,
            )
          ],
        ),
      ),
    );
  }
}