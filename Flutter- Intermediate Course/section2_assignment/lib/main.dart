//don't change put anything in initState that has to change. watch the
//solution from
// https://github.com/voidrealms/flutter_intermediate_2_assignment/blob/master/lib/main.dart
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
  List<Step> _list=[];
  int _index;
  String string;
  String age;
  String _string=' ';
  String _age=' ';
  String res;
  @override
  void initState(){
    super.initState();
    res='';
    _index=0;

    // _list.add(new Step(title: new Text('Name:',textAlign: TextAlign.left,),content: new Container(child: new TextField(onSubmitted:_onSubmitname),)));
    // _list.add(new Step(title: new Text('Age:',textAlign: TextAlign.left,),content: new Container(child: new TextField(onSubmitted:_onSubmitted),)));
    // _list.add(new Step(title:new Text('Result:'),content: new Row(
    //     children: [
    //       new Text(res),
    //       new RaisedButton(onPressed: _show, child: new Text('Show!!'),)
    //     ],
    //
    // )));
  }
  void _show(){
    setState(() {
      _string=string;
      _age=age;
      print(_age+' '+_string);
      print('onShow');
    });
}
  void _onSubmitted(String val){
    setState(() {
      print('onSubmitted');
      age=val;
    });
  }
  void _onSubmitname(String val){
    setState(() {
      print('onSubmitname');
      string=val;
    });
}
  // void _onCurrent(int index){
  //   setState(() {
  //
  //   });
  // }
  void onTapped(int val){
    setState(() {
      _index=val;
    });
  }
  void onContinue(){
    setState(() {
      _index++;
      if(_index>=_list.length){
        _index=0;
      }
    });
  }
  void onCancel(){
    setState(() {
      _index--;
      if(_index<0){
        _index=_list.length-1;
      }
    });

  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Name here')
      ),
      body: new Container(
        color: Colors.black54,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new ListView(
            children: [
              new Stepper(
                type: StepperType.vertical,
                steps: _list=[
                  new Step(title: new Text('Name:',textAlign: TextAlign.center,),content: new Column(
                    children:
                    [
                      new TextField(onSubmitted:_onSubmitname,autofocus: true,)
                    ],
                  ),isActive: true),
                  new Step(title: new Text('Age:',textAlign: TextAlign.center,),content: new Column(
                    children: [
                      new TextField(onSubmitted:_onSubmitted,autofocus: true)
                    ],
                  ),isActive: true),
                  new Step(title:new Text('Result:'),content: new Column(
                    children: [
                      new Row(

                        children: [
                          // new RaisedButton(onPressed: _show, child: new Text('Click!!'),),
                          new Text(_age),
                          new Text('->'),
                          new Text(_string)
                        ],
                      )
                    ],
                  ),isActive: true)
                ],
                currentStep: _index,
                onStepTapped: onTapped,
                onStepContinue: onContinue,
                onStepCancel: onCancel,
                // controlsBuilder: (context, {onStepCancel, onStepContinue}) {
                //   new RaisedButton(onPressed: _show,child: new Text("CLICK!!"),);
                // },
              ) ,
              new RaisedButton(onPressed: _show,child: new Text('CLICK'),)
            ],
          )
          )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}