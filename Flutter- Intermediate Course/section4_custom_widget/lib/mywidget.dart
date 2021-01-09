import 'package:flutter/material.dart';
class MyWidget extends StatelessWidget{
  //every widget holds state but class doesn't hold state
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(32.0),
      child: new Text('data'),
    );
  }

}