import 'package:http/http.dart' as http;//dependencies changed
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';
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
  Map _countries=new Map();
  void _getData() async{
    var url='http://country.io/names.json';
    var response= await http.get(url);
    if(response.statusCode==200){
      setState((){print('got');
      print('--------------------------------------------------------------------------');
      _countries=json.decode(response.body);
      }

      );
    }else {
      print("Status code: ${response.statusCode}");

    }

  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
    //this method
    _getData();//everytime rendered, it will load 250 countries. each loading causes network call which is
              //power-consuming.
    return new Scaffold(
      appBar: new AppBar(
          title:new Text('Section 6 - ListView')
      ),
      body: new Container(
        //color: Colors.blue,
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
                new Text('Countries', style: new TextStyle(fontWeight: FontWeight.bold),),
                new Expanded(
                    child: new ListView.builder(
                        itemCount: _countries.length,
                        itemBuilder: (BuildContext context, int index){
                          print(index);
                          //print(context);
                          String key=_countries.keys.elementAt(index);
                          return new Row(
                            children: [
                              new Text('${key}: '),
                              new Text('${_countries[key]}')
                            ],
                          );

                        }
                    )
                )

              ],
            ),
          )
      ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }

  // @override
  // void initState() {//will not load 250 countries for each render(flipping the phone vertically/horizontally)
  //   _getData();//if it takes too much time, application will freeze.
  // }
}