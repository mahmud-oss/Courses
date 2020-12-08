import 'package:section5_assignment/employee.dart';
import 'package:section5_assignment/cashier.dart';
import 'package:section5_assignment/manager.dart';
import 'package:section5_assignment/payroll.dart';

main(List<String> arguments) {

  manager boss = new manager();
  cashier jill = new cashier();

  payroll payrol = new payroll();
  payrol.add(boss);
  payrol.add(jill);

  payrol.print();

}
