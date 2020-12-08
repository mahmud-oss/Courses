//mixins
// dragon and ghost can't inherit from other class
import 'package:section4_mixins/dragon.dart';
import 'package:section4_mixins/feline.dart';
import 'package:section4_mixins/ghost.dart';

class monster extends feline with dragon, ghost{
  bool glowsindark=true;
  void test(){
    print('hello from monster');
    super.test();
  }
}