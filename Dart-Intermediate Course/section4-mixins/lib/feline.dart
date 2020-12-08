//mixins
import 'mammal.dart';
class feline extends mammal{
  bool hasClaws = true;
  void growl()=>print('grr');
  void test(){
    print('hello from feline');
    super.test();
  }
}