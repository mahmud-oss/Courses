import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
void main(){
  runApp(new MaterialApp(
    home: new Myapp(),
  ));
}
class Myapp extends StatefulWidget{//body
  @override
  _State createState() => new _State();
}
class Area{
  int index;
  String name;
  Color color;
  Area({this.index:-1, this.name='Area', this.color=Colors.red});
}
class _State extends State<Myapp>{//cloth
  List<Area> _list=[];
  int _location;
  @override
  void initState(){
    for(int i=0;i<16;i++){
      _list.add(new Area(index: i,name:'Area-${i}'));
    }
    var rng=new Random();
    _location=rng.nextInt(_list.length);
    print(_location);
  }
  Widget _generate(int index){
    return new GridTile(
      child: new Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: new RaisedButton(
            onPressed: ()=>_onPressed(index),
          child: new Text(_list[index].name,textAlign: TextAlign.center,),
          color: _list[index].color,
        ),
      ),
    );
  }
  void _onPressed(int index){
    setState(() {
      if(_location==index){
        _list[index].color=Colors.green;
      }else{
        _list[index].color=Colors.yellow;
      }
    });
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 2 - GridView')
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new GridView.count(
              crossAxisCount: 4,
            children:new List<Widget>.generate(_list.length, _generate)
            ,
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}