import 'package:flutter/material.dart';
class thirdpage extends StatefulWidget{
  @override
  ThirdState createState() => new ThirdState();

}
class ThirdState extends State<thirdpage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Third Page'),
      ),
      body: new Container(
        child: new Center(
            child: new Column(
              children: [
                new RaisedButton(
                  onPressed: ()=>Navigator.of(context).pushNamed('/Second'),
                  child: new Text('Previous'),
                )
              ],
            )
        ),
      ),
    );
  }
}