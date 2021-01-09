import 'package:flutter/cupertino.dart';
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
  int counter=0;
  List<Widget> _list=[];
  @override
  void initState(){//as it is initial state, no need to set state.
                    //initial state will add some widgets to the list
      for(int i=0;i<5;i++){
        //_list.add(_newItem(i));
        Widget child = _newItem(i);
        _list.add(child);
      }
  }
  void onClicked(){//on click add a new item
    Widget child = _newItem(counter);
    setState(() {
      _list.add(child);
    });
  }
  Widget _newItem(int i){
    Key key=new Key('item-${i}');//allows us to reference object. (pointer)
    //new Expanded();
    Container child=new Container(
      key: key,//the 'key' inside the Container gets the key of outer side. so whenever outer key is called
                //the key inside Container gets called.
      color: Colors.purple,
      padding: EdgeInsets.all(20),
      child: new Chip(
        label: new Text('Chip here ${i}'),
        padding: EdgeInsets.all(10),
        deleteIcon: Icon(Icons.remove_circle),
        deleteIconColor: Colors.black,
        deleteButtonTooltipMessage: 'delete',
        onDeleted:()=> _removeItem(key),
        avatar: new CircleAvatar(
          backgroundColor: Colors.amber,
          child: new Text(i.toString()),
        ),
      ),
    );
    counter++;
    return child;
  }
  void _removeItem(Key key){
      for(int i=0;i<_list.length;i++){
        if(_list[i].key==key){
          setState(() {
            _list.removeAt(i);
            new Text('Deleting ${i}');
          });
        }
      }
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Name here')
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: onClicked, 
        child: new Icon(Icons.add)  ,
      ),
      body: new Container(
        color: Colors.grey,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children:[
              new Expanded(
                  child: new ListView.builder(
                      itemCount: _list.length,

                      itemBuilder: (BuildContext context, int index){
                        Key key=_list.elementAt(index).key;
                        return new Row(
                          children: [
                            _list[index]
                          ],
                        );
                      }
                  )
              )
            ]

            //_list

          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}