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
class Choice{
  String title;
  IconData icon;
  Choice({this.title,this.icon});
}
class _State extends State<Myapp> with SingleTickerProviderStateMixin{//cloth
  TabController _controller;
  List<Choice> _item=[
    Choice(title: 'Car',icon: Icons.directions_car),
    Choice(title: 'Bike',icon: Icons.directions_bike),
    Choice(title: 'Boat',icon: Icons.directions_boat),
    Choice(title: 'Bus',icon: Icons.directions_bus),
    Choice(title: 'Railway',icon: Icons.directions_railway),
    Choice(title: 'Walk',icon: Icons.directions_walk),
  ];
  @override
  void initState(){
    _controller=new TabController(
        length: _item.length,
      vsync: this
    );
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple,
        title:new Text('Section 2 - TabBarView'),
        bottom: new PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: new Theme(
              data: Theme.of(context).copyWith(accentColor: Colors.orange),
              child: new Container(
                alignment: Alignment.center,
                child: new TabPageSelector(controller: _controller,selectedColor: Colors.white,),
                height: 50,
              )
          ),
        )
      ),
      body: new TabBarView(
        controller: _controller,
        children: _item.map((e) {
          return new Container(
            padding: EdgeInsets.all(50),
              color: Colors.indigo[300],
            child: new Center(
              child: new Column(
                children: [
                  new Text(e.title),
                  new Icon(e.icon,size: 150,)
                ],
              ),
            ),
          );
        }).toList()
      ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}