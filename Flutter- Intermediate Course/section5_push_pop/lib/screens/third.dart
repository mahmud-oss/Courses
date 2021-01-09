import 'package:flutter/material.dart';
class ThirdPage extends StatefulWidget{
  @override
  ThirdState createState() =>  new ThirdState();

}
class ThirdState extends State<ThirdPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page-3"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new RaisedButton(
                //try-1
                // onPressed:() => Navigator.of(context).pushNamedAndRemoveUntil('/Second', (route) => false),
                // //route: false->pushNamedAndRemove until pushes the route to load and then removes it.(no history)
                // //making (route) => false won't let navigate to back
                // child: new Text("Previous"),
                //try-2
                // onPressed:() => Navigator.of(context).pop(),
                // //goes to last visited screen from history
                // child: new Text("Previous"),
              //  try-3
                onPressed: (){
                  if(Navigator.of(context).canPop()){
                    Navigator.of(context).pop();
                  }else{
                    Navigator.of(context).pushNamed('/Second');
                  }
                },
                child: new Text("Previous"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}