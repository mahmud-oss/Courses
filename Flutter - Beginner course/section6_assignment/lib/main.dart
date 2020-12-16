import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
  List pets = ['Cat','Dog','Fish','Cow','Parrot','Rabbit','Rooster'];
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
              new Text('Pets'),
              new Expanded(
                  child:  new ListView.builder(//every function that shows something has 'return'
                        padding: EdgeInsets.all(10),
                        itemCount: pets.length,
                        itemBuilder: (BuildContext context, int index){
                          return new Row(
                            children: [
                              new Text('${pets[index]}')
                            ],
                          );
                        }
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