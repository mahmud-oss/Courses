import 'package:flutter/material.dart';
import 'package:section5_push_named/screens/second_page.dart';
import 'package:section5_push_named/screens/third_page.dart';
import './screens/first_page.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Home',
      routes:{
        '/Home':(BuildContext context)=>new firstpage(),
        '/Second':(BuildContext context)=> new secondpage(),
        '/Third':(BuildContext context)=>new thirdpage(),
      },
      home:new firstpage()
    );

  }

}