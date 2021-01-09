import 'package:flutter/material.dart';
class GlobalState{
  String x;
  static GlobalState instance=new GlobalState._();
  GlobalState._();
  set(String y)=>x=y;
  get()=>x;
}