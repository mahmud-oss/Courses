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
  List<Step> _steps=[];
  int _index;
  @override
  void initState(){
    _index=0;
    _steps=[
      new Step(title: new Text('Step-1'),isActive: true, content: new Icon(Icons.account_balance_outlined)),
      new Step(title: new Text('Step-2'),isActive: true, content: new Icon(Icons.account_balance)),
      new Step(title: new Text('Step-3'),isActive: true, content: new Icon(Icons.account_balance_wallet)),
      new Step(title: new Text('Step-4'),isActive: true, content: new Icon(Icons.account_balance_wallet_outlined)),
    ];
  }

  void onTap(int val){
    setState(() {
      _index=val;
    });
  }
  void onContinue(){
    setState(() {
      _index++;
      if(_index>=_steps.length){
        _index=0;
      }
    });
  }
  void onCancel(){
    setState(() {
      _index--;
      if(_index<0){
        _index=_steps.length-1;
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
        color: Colors.white,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Stepper(
            type: StepperType.vertical,
            steps: _steps,
            currentStep: _index,
            onStepTapped: onTap,
            onStepContinue: onContinue,
            onStepCancel: onCancel,
          ),
        )
        ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}