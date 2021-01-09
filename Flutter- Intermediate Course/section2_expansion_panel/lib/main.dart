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
class MyItem{
  bool isExpanded;
  final String header;
  final Widget body;
  MyItem(this.isExpanded,this.header,this.body);
}
class _State extends State<Myapp>{//cloth
  List<MyItem> _list=[];
  @override
  void initState(){
    for(int i=0;i<10;i++){
      _list.add(
        new MyItem(
            false,
            'item-${i}',
            new Container(
              child: new Text('Hello good looking'),
              color: Colors.white54,
            )
        )
      );
    }
  }
  ExpansionPanel _createItem(MyItem item){
    return new ExpansionPanel(
        headerBuilder: (BuildContext context,bool isExpanded) {
          return new Container(
            color: Colors.white,
            child: new Text('Hi ${item.header}'),
          );
        },
        body: item.body,
        isExpanded: item.isExpanded
    );
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
        child: new ListView(
          children: [
            new ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded) {
                setState(() {
                  _list[panelIndex].isExpanded = !_list[panelIndex].isExpanded;
                });
              },
              children: _list.map(_createItem).toList(growable: true),
            )
          ],
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}