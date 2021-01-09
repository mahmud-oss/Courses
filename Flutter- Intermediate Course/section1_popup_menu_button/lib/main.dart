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
enum Animals{cat,dog,bird,lizard}
class _State extends State<Myapp> {//cloth
  String _value='nothing';
  Animals _selected=Animals.cat;
  List<PopupMenuEntry<Animals>> _items=[];
  @override
  void initState(){
    for(Animals animal in Animals.values){
      _items.add(
          new PopupMenuItem(
              child: new Text(animal.toString()),
            value: animal,
          )
      );
    }
  }
  void _onSelected(Animals animal){
    setState(() {
        _selected=animal;
        _value=_selected.toString().split('.')[1];
    });
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Name here')
      ),
      body: new Container(
        //color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Row(
            children: [
              new Container(
                  child:new Text('You have selected ${_value}'),
                color: Colors.red,
              ),
              new PopupMenuButton<Animals>(
                padding: EdgeInsets.all(20),
                  color: Colors.green,
                    //initialValue: Animals.cat,
                    child: new Icon(Icons.add),

                    onSelected: _onSelected,
                    itemBuilder: (BuildContext context){
                       return _items;
                    }
              )
            ],

          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}