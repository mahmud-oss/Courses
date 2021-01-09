import 'package:flutter/material.dart';
class myWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new RaisedButton(
          onPressed:()=> Navigator.of(context).pushNamed('/First'),
        child: new Text('Widget -> Take me to First Page'),
      ),
    );
  }
}