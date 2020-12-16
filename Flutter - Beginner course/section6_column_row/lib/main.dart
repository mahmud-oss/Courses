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
  TextEditingController _user= new TextEditingController();
  TextEditingController _pass = new TextEditingController();
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Section 6 - Row and column')
      ),
      body: new Container(
        color: Colors.blue,
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [//ACTUALLY children<widget>. widgets are generic placeholder for objects
              new Text('Login'),
              new Row(
                children: [
                  new Text('Username'),
                  new Expanded(child: TextField(controller: _user, ))
                ],
              ),
              new Row(    //it looks "Password_________". But it doesnot know how long '___' should be.
                          // 'Expanded' allocates the whole space after 'Password'
                children: [
                  new Text('Password'),
                  new Expanded(child: TextField(controller: _pass, obscureText: true,))
                ],

              ),
              new Padding(
                  padding: EdgeInsets.all(20),
                  child: new RaisedButton(
                      onPressed: ()=>print('User: ${_user.text} and Password: ${_pass.text}'),
                    child: new Text('Show values on terminal'),
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