import 'package:flutter/material.dart';
class FirstPage extends StatefulWidget{
  @override
  FirstState createState() =>new FirstState();

}
class FirstState extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page-1"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new RaisedButton(
                //try-1
                // onPressed:() => Navigator.of(context).pushNamedAndRemoveUntil('/Second', (route) => true),
                //route: false->pushNamedAndRemove until pushes the route to load and then removes it.(no history)
                //making (route) => false won't let navigate to back
                // child: new Text("Next"),
                //try-2
                onPressed:() => Navigator.of(context).pushNamed('/Second'),
                child:  new Text("Second Page-Push Named"),
              ),
              new RaisedButton(
                  onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/Third',(route)=>false),
                  child:  new Text("Third Page-Push Named And Removed Until"),
              )
            ],
          ),
        ),
      ),
    );
  }
}