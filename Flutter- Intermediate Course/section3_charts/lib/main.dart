//updated dependencies in pubspec.yaml
import 'dart:math';

import 'package:charts_flutter/flutter.dart' as chart;
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
void main(){
  runApp(new MaterialApp(
    home: new Myapp(),debugShowCheckedModeBanner: true,
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
  List<Sales> _data=[];
  List<chart.Series<Sales,String>> _chartData=[];
  void _makeData(){
    for(int i=2010;i<2021;i++){
      final rnd=new Random();
      _data.add(new Sales(i.toString(),rnd.nextInt(1000) ));
    }
    _chartData.add(new chart.Series(
        id: 'CHART',
        colorFn: (datum, index) => chart.MaterialPalette.red.shadeDefault,
        data: _data,
        domainFn: (datum, index) => datum.year,
        measureFn: (datum, index) => datum.sales,
      fillPatternFn: (datum, index) => chart.FillPatternType.solid,
      displayName: 'Charts'
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
        title:new Text('Section 3 - Chart')
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text('Hello'),
              new Expanded( //try listview
                  child: new chart.BarChart(_chartData)
              )
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}