import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
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
  String val ='';
  void setString(String _val){
    setState(() {
      val=_val;
    });
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 4 - Drawer')
      ),
      drawer: new Drawer(
        semanticLabel: 'Notification centre',
        child: new Container(
          padding: EdgeInsets.all(50),
          color: Colors.yellow,
          child: new Column(
            children: [
              new Text('Press the goddamn button'),
              new RaisedButton(onPressed: ()=>Navigator.pop(context), child: new Text('Bu-bU Button'),),
              new RaisedButton(onPressed: ()=>setString('looking for something'),child: new Text('click'),)
            ],
          ),
        )

      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text(val)
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}