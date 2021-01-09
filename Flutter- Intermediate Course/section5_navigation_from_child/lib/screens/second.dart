import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget{
  @override
  SecondState createState() =>new SecondState();

}
class SecondState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page-2"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new RaisedButton(
                onPressed:() => Navigator.of(context).pushNamedAndRemoveUntil('/Third', (route) => true),
                //making (route) => false won't let navigate to back
                child: new Text("Next"),
              ),
              new RaisedButton(
                onPressed:() => Navigator.of(context).pushNamedAndRemoveUntil('/First', (route) => false),
                //route: false->pushNamedAndRemove until pushes the route to load and then removes it.(no history)
                //making (route) => false won't let navigate to back
                child: new Text("Previous"),
              )
            ],
          ),
        ),
      ),
    );
  }
}