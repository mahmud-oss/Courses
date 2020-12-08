import 'package:http/http.dart' as http;
import 'dart:convert';
void main(List<String> arguments) async{
  var url='http://info.cern.ch';
  var response=await http.get(url);
  print('${response.contentLength}');
}
