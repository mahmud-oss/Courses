//mixins
import 'animal.dart';
class mammal extends animal{
  bool hasHair=true;
  bool hasBackbone=true;
  bool isWarmblood=true;
  void walk()=>print('walking');
  @override
  void test(){
    print('hello from mammal');
  }
}