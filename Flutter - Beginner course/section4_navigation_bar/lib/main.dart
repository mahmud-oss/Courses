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
  String string='';
  int _index=0;
  List<BottomNavigationBarItem> _item;

  @override
  void initState() {
    _item=new List();
    _item.add(new BottomNavigationBarItem(icon: new Icon(Icons.person), label: 'person'));
    _item.add(new BottomNavigationBarItem(icon: new Icon(Icons.people), label: 'people')) ;
    _item.add(new BottomNavigationBarItem(icon: new Icon(Icons.phone), label: 'phone'));
  }

  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 4 - Bottom navigation bar')
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text(_index.toString())
            ],
          ),
        )
        ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _item,//BottomNavigationBarItem list is put into BottomNavigationBar
        backgroundColor: Colors.cyanAccent,
        currentIndex: _index,//when clicked index of the BottomNavigationBarItem is picked
        onTap: (int index){
          setState(() {
            _index=index;//that index is set through an anonymous fuction
          });
        }
      ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();

  }
}