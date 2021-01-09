import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:section5_navigation_from_child/widget.dart';
class ThirdPage extends StatefulWidget{
  @override
  ThirdState createState() =>  new ThirdState();

}
class ThirdState extends State<ThirdPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page-3"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new RaisedButton(
                onPressed:() => Navigator.of(context).pushNamedAndRemoveUntil('/Second', (route) => false),
                //route: false->pushNamedAndRemove until pushes the route to load and then removes it.(no history)
                //making (route) => false won't let navigate to back
                child: new Text("Previous"),
              ),
              new myWidget()
            ],
          ),
        ),
      ),
    );
  }
}