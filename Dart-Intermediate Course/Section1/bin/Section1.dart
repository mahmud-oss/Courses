import 'package:Section1/Section1.dart' as imp;
import 'dart:convert';
import 'package:http/http.dart' as http;//more imports
void main(List<String> arguments) {
  //import
  imp.hello();
  String s1='halo';
  List ebytes=utf8.encode(s1);
  print('ebytes: ${ebytes}');
  String encoded=base64.encode(ebytes);
  print('encoded: ${encoded}');
  List dbytes=base64.decode(encoded);
  print('dbytes: ${dbytes}');
  String decoded=utf8.decode(dbytes);
  print('decoded: ${decoded}');
  //more imports
  var url='http://www.voidrealms.com';
  http.get(url).then((response){
    print('response code: ${response.statusCode}');
    print(response.body);
  });
}
