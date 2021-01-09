import 'package:flutter/material.dart';
class firstpage extends StatefulWidget{
  @override
  FirstState createState() => new FirstState();

}
class FirstState extends State<firstpage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
         title: new Text ('First page'),
      ),
      body: new Container(
        child: new Center(
            child: new Column(
              children: [
                new RaisedButton(onPressed: ()=>Navigator.of(context).pushNamed('/Second'),child: new Text("Next"),)
              ],
            )
        ),
      ),
    );
  }
}