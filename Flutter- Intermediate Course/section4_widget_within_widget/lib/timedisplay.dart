import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class TimeDisplay extends StatelessWidget{
  TimeDisplay({Key ley, Duration this.duration, Color this.color, this.onClear});
  // TimeDisplay({Key ley, Duration this.duration, Color this.color, this.onClear}):super(key:key);
  Duration duration;
  Color color;
  ValueChanged<Duration> onClear;
  void onClicked(){
    onClear(duration);
  }
  @override
  Widget build(BuildContext context) {
    return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Padding(
            padding:EdgeInsets.all(12.0) ,
          child: new Text(duration.toString()),
        ),
        new IconButton(icon: new Icon(Icons.clear),onPressed: onClicked,)
      ],
    );
  }
}