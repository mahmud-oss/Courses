import 'package:flutter/material.dart';
class secondpage extends StatefulWidget{
  @override
  SecondState createState() => new SecondState();

}
class SecondState extends State<secondpage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Second Page')),
      body: new Container(
        child: new Center(
            child: new Column(
              children: [
                new RaisedButton(onPressed: ()=>Navigator.of(context).pushNamed('/Home'),child: new Text('Previous'),),
                new RaisedButton(onPressed: ()=>Navigator.of(context).pushNamed('/Third'),child: new Text('Next'),)
              ],
            )
        ),
      ),
    );
  }
}