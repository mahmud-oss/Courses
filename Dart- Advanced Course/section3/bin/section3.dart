import 'dart:io';
import 'dart:convert';
void main(List<String> arguments) {
  //encryption
  String s1='';
  for(int i=0;i<100;i++){
    s1=s1+'hello world\r\n';
  }
  print(s1);
  print('String: ${s1.length}');
  List encoded=utf8.encode(s1);
  print('Encoded: ${encoded.length}');
  List compressed=gzip.encode(encoded);
  print('Compressed: ${compressed.length}');
  List decompressed=gzip.decode(compressed);
  print('Decompressed: ${decompressed.length}');
  String decoded=utf8.decode(decompressed);
  print('Decoded: ${decoded.length}');
  assert(s1==decoded);
  //gzip(faster) vs zlib(better compressor)

  int GZIP=testCompress(gzip);
  int ZLIB=testCompress(zlib);
  print(GZIP);
  print(ZLIB);
}
String generateData(){
  String s='';
  for(int i=0;i<100;i++){
    s=s+'hell no\r\n';
  }
  print('String: ${s.length}');
  return s;
}
int testCompress(var codec){
  String s1=generateData();
  List encoded=utf8.encode(s1);
  print('${codec} utf8 Encoded: ${encoded.length}');
  List compressed=codec.encode(encoded);
  print('${codec} compressed: ${compressed.length}');
  List decompressed=codec.decode(compressed);
  print('${codec} decompressed: ${decompressed.length}');
  String s2=utf8.decode(decompressed);
  print('${codec} utf8 decoded: ${s2.length}');
  return compressed.length;
}