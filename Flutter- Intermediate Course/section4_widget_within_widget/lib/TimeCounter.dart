import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'timedisplay.dart';

class TimeCounter extends StatefulWidget{//body
  @override
  _TimeCounterState createState() => new _TimeCounterState();
}
class _TimeCounterState extends State<TimeCounter>{//cloth
  Stopwatch _watch;
  Timer _timer;
  Duration _duration;
  void _onStart(){
    setState(() {
      _watch=new Stopwatch();
      _timer=new Timer.periodic(new Duration(seconds: 1), _onTimeout);
    });
    _watch.start();
  }
  void _onStop(){
    setState(() {
      _watch.stop();
      _timer.cancel();
    });
  }
  void _onTimeout(Timer timer){
    if(! _watch.isRunning)
      _watch.start();
      // return;
    setState(() {
      _duration=_watch.elapsed;
    });
  }
  void _onClear(Duration duration){
    setState(() {
      _duration=new Duration();
    });
  }
  @override
  void initState(){
    _duration=new Duration();
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Container(
      padding: EdgeInsets.all(20),
      child: new Center(
        child: new Column(
          children: [
            new TimeDisplay(
              color: Colors.red,
              duration: _duration,
              onClear: _onClear,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Padding(
                    padding: EdgeInsets.all(10),
                  child: new RaisedButton(onPressed: _onStart,child: new Text('Start'),),
                ),
                new Padding(
                  padding: EdgeInsets.all(10),
                  child: new RaisedButton(onPressed: _onStop,child: new Text('Stop'),),
                )
              ],
            )
          ],
        ),
      ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}