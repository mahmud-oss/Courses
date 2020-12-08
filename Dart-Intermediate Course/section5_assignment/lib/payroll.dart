import 'employee.dart';
class payroll<T extends employee>{
  List<T> val=new List<T>();
  void add(T e)=>val.add(e);
  void print(){
    val.forEach((element) {
      element.sayHello();
    });
  }
}