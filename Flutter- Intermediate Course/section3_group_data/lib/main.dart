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
  String year;
  int sales;
  Sales(this.year,this.sales);
}
class _State extends State<Myapp>{//cloth
  //_chartData has to be populated with _laptop & _desktop data
  List<Sales> _laptop=[];
  List<Sales> _desktop=[];
  List<chart.Series<Sales, String>> _chartData=[];
  void _makeData(){
    var rnd=new Random();
    for(int i=2010;i<2021;i++){
      _laptop.add(new Sales(i.toString(), rnd.nextInt(1000)));
      _desktop.add(new Sales(i.toString(), rnd.nextInt(1000)));
    }
    _chartData.add(new chart.Series(
        id: 'Group data',
        colorFn: (datum, index) => chart.MaterialPalette.red.shadeDefault,
        data: _laptop,
        domainFn: (datum, index) => datum.year,
        measureFn: (datum, index) => datum.sales,
      fillPatternFn: (datum, index) => chart.FillPatternType.solid,
      displayName: 'Say what!!'
    ));
    _chartData.add(new chart.Series(
        id: 'Group data',
        colorFn: (datum, index) => chart.MaterialPalette.yellow.shadeDefault,
        data: _desktop,
        domainFn: (datum, index) => datum.year,
        measureFn: (datum, index) => datum.sales,
        fillPatternFn: (datum, index) => chart.FillPatternType.solid,
        displayName: 'Say what!!'
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
        color: Colors.white,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text('Hello'),
              new Expanded(
                  child: new chart.BarChart(_chartData,
                    vertical: false,
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