//Added "pointycastle: ^2.0.0" in the pubspec.yaml file
//import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/pointycastle.dart';
import 'dart:convert';
import 'dart:typed_data';

void main(List<String> arguments) {
  //generating SHA-256 hash
  Digest digest=new Digest("SHA-256");
  String convert='Hello hash :D';
  List list=utf8.encode(convert);
  Uint8List data=new Uint8List.fromList(list);
  //  Uint8List data=new Uint8List.fromList(utf8.encode(convert));
  Uint8List hash=digest.process(data);
  print(hash);
  print(base64Encode(hash));
  //Key generation
  String password='password';

  var salt=createUint8ListfromString('snuf');
  var pk= new KeyDerivator('SHA-1/HMAC/PBKDF2');
  var params=new Pbkdf2Parameters(salt, 100, 16);

  pk.init(params);
  Uint8List key=pk.process(createUint8ListfromString(password));
  print(key);
  print(base64Encode(key));
}
Uint8List createUint8ListfromString(String string){
  return Uint8List.fromList(utf8.encode(string));
}