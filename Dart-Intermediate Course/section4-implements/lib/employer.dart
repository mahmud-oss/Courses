import 'package:section4_implements/employee.dart';

class employer implements empployee{
  String name= 'bob';
  void test() {
    print('in employer');
    print(super.toString());
  }
}