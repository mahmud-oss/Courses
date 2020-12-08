
import 'package:section5_GenericClass/counter.dart';

void main(List<String> arguments) {
  counter<double> element=new counter<double>();
  element.addall([1,2,3,4]);
  element.add(5);
  element.elementAt(4);
  element.total();
}
