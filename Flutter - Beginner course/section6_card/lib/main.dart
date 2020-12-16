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
              //new Text('Hello'),
              new Card(
                child: new Container(
                  color: Colors.deepOrangeAccent ,
                  padding: EdgeInsets.all(15),
                  child: new Text('hm'),
                ),
              ),
              new Card(
                child: new Container(

                  color: Colors.deepOrangeAccent ,
                  padding: EdgeInsets.all(15),
                  //child: new Text('hm'),
                  child: new Column( //child can contain only one widget. children can contain multiple widgets
                    children: [
                      new Text('data'),
                      new Text('data')
                    ],
                  )
                ),
              )
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}