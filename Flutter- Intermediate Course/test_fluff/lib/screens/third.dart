import 'package:flutter/material.dart';
import '../code/GlobalState.dart';

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => new _ThirdState();
}

class _ThirdState extends State<Third> {

  GlobalState _store = GlobalState.instance;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('On page 3 -> Hello ${_store.get('name')}'),

                new RaisedButton(onPressed: (){Navigator.of(context).pop();}, child: new Text('Back'),)
              ],
            ),
          )
      ),
    );
  }
}