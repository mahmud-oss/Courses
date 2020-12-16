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
  bool _value1=false;
  bool _value2=false;
  void _value1Changed(bool value){
    setState(() {
      //print(_value1);
      _value1=value;
    });
  }
  void _value2changed(bool value){
    setState(() {
      _value2=value;
    });
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 3- Check box')
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
                        //checkbox has a few arguments. CheckboxListTitle has a lot
              new Checkbox(value: _value1, onChanged: _value1Changed,),
              new CheckboxListTile(//don't have to click exactly on the check-box
                value: _value2,
                onChanged: _value2changed,
                title: new Text('Check the damn box'),//text on the left and checkbox on the right
                controlAffinity: ListTileControlAffinity.leading,//checkbox on the left and text on the right
                subtitle: new Text('Subtitle'),//position is under the title
                secondary: new Icon(Icons.add_circle_outline_sharp),
                activeColor: Colors.red,

              )
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}