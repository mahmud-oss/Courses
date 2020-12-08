import 'package:http/http.dart' as http;
import 'dart:async';
void main(List<String> arguments) async {
  //get
  var url='https://www.httpbin.org';
  var response=await http.get(url);
  print('status code: ${response.statusCode}');
  print('body:\r\n${response.body}');
  //post
  print('----------------------POST-------------------------');
  var dest='https://www.httpbin.org/post';
  var res=await http.post(dest,body: 'name=bobo&color=hobo');
  print('status code: ${res.statusCode}');
  print('body:\r\n${res.body}');
}
