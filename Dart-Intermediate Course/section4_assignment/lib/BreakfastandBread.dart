import 'package:section4_assignment/hotel.dart';
import 'package:section4_assignment/house.dart';

class BnB extends House implements Hotel{
  int guests;
  BnB(){
    guests=0;
  }
  void prin() => print(guests);
}