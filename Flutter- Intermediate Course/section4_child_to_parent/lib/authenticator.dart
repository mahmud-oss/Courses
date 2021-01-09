import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class Authenticator extends StatefulWidget{//body
  Authenticator({Key key, this.onAuthenticated});
  final ValueChanged<bool> onAuthenticated;
  @override
  _AuthenticatorState createState() => new _AuthenticatorState(onAunthenticated: onAuthenticated);
}
class _AuthenticatorState extends State<Authenticator>{//cloth
  TextEditingController _user;
  TextEditingController _password;
  final ValueChanged<bool> onAunthenticated;
  _AuthenticatorState({Key key, this.onAunthenticated});
  @override
  void initState(){
    _user=new TextEditingController();
    _password=new TextEditingController();
  }
  void _onPressed(){
    if(_user.text != 'user' || _password.text != '1234'){
      onAunthenticated(false);
    }else{
      onAunthenticated(true);
    }
  }
  @override
  Widget build(BuildContext context) {//BuildContext--> context(whether it is shut down or anything else) of
                                      //this method
    return new Card(
      color: Colors.blueGrey,
      child: new Padding(
          padding: EdgeInsets.all(20),
        child: new Center(
          child: new Column(
            children: [
              new TextField(
                controller: _user,
                decoration: new InputDecoration(labelText: "User name here"),
              ),
              new TextField(
                controller: _password,
                decoration: new InputDecoration(labelText: "password here"),
                obscureText: true,
              ),
              new RaisedButton(
                  onPressed: _onPressed,
                child: new Text('CLICK HERE!!!!'),
              )
            ],
          ),
        ),
      ),
    );//scaffold is a structure on which material application is going to be built
    //throw UnimplementedError();
  }
}