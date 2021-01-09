import 'dart:math';

import 'package:charts_flutter/flutter.dart' as chart;
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
class Sales{
  String name;
  int sales;
  Sales(this.name,this.sales);
}

class _State extends State<Myapp>{//cloth
  List<Sales> _data=[];
  List<chart.Series<Sales,String>> _chartData=[];
  void _makeData(){
    var rnd=new Random();
    _data.add(new Sales('Cats', rnd.nextInt(1000)));
    // cats, birds, lizards, and dogs.
    _data.add(new Sales('Birds', rnd.nextInt(1000)));
    _data.add(new Sales('Lizards', rnd.nextInt(1000)));
    _data.add(new Sales('Dogs', rnd.nextInt(1000)));
    _chartData.add(new chart.Series(
        id: 'Chart',
        colorFn: (datum, index) => chart.MaterialPalette.purple.shadeDefault,
        data: _data,
        domainFn: (datum, index) => datum.name,//name is string. that's why chart.Series<Sales,String>
        measureFn: (datum, index) => datum.sales,
      fillPatternFn: (datum, index) => chart.FillPatternType.solid,
    ));
  }
  @override
  void initState(){
    _makeData();
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
              new Text('Hello'),
              new Expanded(child: new chart.BarChart(_chartData))
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}