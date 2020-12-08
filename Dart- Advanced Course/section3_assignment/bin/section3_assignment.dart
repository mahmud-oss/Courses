import 'dart:io';
import 'dart:convert';
void main(List<String> arguments) {
  String s='hello hello hello';
  List encoded=utf8.encode(s);
  List compressed=gzip.encode(encoded);
  File file=new File(Directory.current.path+'/compressed.txt');
  file.createSync();
  file.writeAsBytesSync(compressed);
  List decompressed=gzip.decode(compressed);
  String original=utf8.decode(decompressed);
  print(original);
}