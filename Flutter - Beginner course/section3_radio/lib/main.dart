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
class _State extends State<Myapp>{//cloth
  int _value1=0;
  int _value2=0;
  void _setValue1(int value){
    setState(() {
      //print(_value1);
      _value1=value;
      //print(_value1);
    });
  }
  void _setValue2(int value){
    setState(() {
      _value2=value;
    });
  }
  Widget makeRadio(){
    List<Widget> list=new List();
    for(int i=0;i<3;i++){
      list.add(new Radio(
        value: i,
        activeColor: Colors.red,
        groupValue: _value1,
        onChanged: _setValue1,

      ));
    }
    Column column=new Column(children: list,);
    return column;
  }
  Widget makeRadioTiles(){//The entire list tile is interactive: tapping
                          // anywhere in the tile selects the radio button.
    List<Widget> list=new List();
    for(int i=0;i<3;i++){
      list.add(new RadioListTile(

        value: i,
        groupValue: _value2,//_value2 determines which radio is selected
        //if value is commented -> when a radio is selected, every radio will be selected
        //if groupVale is commented -> every radio will be selected before anything is selected
        activeColor: Colors.red,
        title: new Text('Item ${i} value ${_value2}'),
        subtitle: new Text('subtitle'),
        onChanged: _setValue2,//passes value as parameter
                              //a radio is selected if value==groupValue
      ));
    }
    Column column=new Column(children: list,);
    return column;
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Name here')
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              makeRadio(),
             makeRadioTiles(),

            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}