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
  int year;
  int sales;
  chart.Color color;
  Sales(this.year,this.sales,this.color);
}
class _State extends State<Myapp>{//cloth
  List<Sales> _data=[];
  List<chart.Series<Sales,int>> _chartData=[];
  void _makeData(){
    _data=[
      new Sales(2010, 990, chart.MaterialPalette.yellow.shadeDefault),
      new Sales(2011, 991, chart.MaterialPalette.blue.shadeDefault),
      new Sales(2012, 993, chart.MaterialPalette.red.shadeDefault),
      new Sales(2013, 992, chart.MaterialPalette.green.shadeDefault),
      new Sales(2014, 996, chart.MaterialPalette.purple.shadeDefault),
    ];
    _chartData.add(new chart.Series(
        id: "Animated Pie Chart",
        colorFn: (datum, index) => datum.color,
        data: _data,
        domainFn: (datum, index) => datum.year,
        measureFn: (datum, index) => datum.sales,
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
        title:new Text('Section 3 - Animated Pie Chart')
      ),
      body: new Container(
        // color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text('Hello'),
              new Expanded(
                  child: new chart.PieChart(_chartData,animate: true,animationDuration: Duration(seconds: 1),) 
              )
            ],
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}