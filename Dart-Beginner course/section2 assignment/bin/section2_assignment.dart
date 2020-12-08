import 'dart:io';
import 'dart:async';
void main(List<String> arguments) {
  String first,last;
  stdout.write('What\'s your first name?\r\n');
  first=stdin.readLineSync();
  stdout.write('What\'s your last name?\r\n');
  last=stdin.readLineSync();
  print(first+' '+last);
}
