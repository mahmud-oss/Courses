//Added "pointycastle: ^2.0.0" in the pubspec.yaml file
import 'package:pointycastle/pointycastle.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:collection/collection.dart';
import 'dart:math';
void main(List<String> arguments) {
  //randomBytes => keyBytes => key => params => cipher.init
  //Uint8List => KeyParameter => ParametersWithIV
  final keyBytes= randomBytes(16);
  final key=KeyParameter(keyBytes);
  
  final iv=randomBytes(8);
  final params=ParametersWithIV(key, iv);

  StreamCipher cipher=new StreamCipher('Salsa20');
  cipher.init(true, params);
  //Encryption
  String plaintext='hello world';
  Uint8List plain_data=Uint8List.fromList(utf8.encode(plaintext));
  Uint8List encrypted=cipher.process(plain_data);
  //Decryption
  cipher.reset();
  cipher.init(false, params);
  Uint8List decrypted=cipher.process(encrypted);

  print('plain text: ${plaintext}');
  print('encrypted: ${encrypted}');
  print('encrypted: ${base64Encode(encrypted)}');
  print('decrypted: ${decrypted}');
  print('decrypted: ${base64Encode(decrypted)}');
}
Uint8List randomBytes(int length){
  //Uint8List => KeyParameter => ParametersWithIV
  final rnd=new SecureRandom('AES/CTR/AUTO-SEED-PRNG');

  final key=new Uint8List(16);
  //print(key);
  final keyParam=new KeyParameter(key);
  //print(keyParam);
  final params=new ParametersWithIV(keyParam, new Uint8List(16));
  //print(params);

  rnd.seed(params);

  var random = new Random();
  //print(random);
  for(int i=0;i<random.nextInt(255);i++){
    rnd.nextUint8();
    //print('${rnd}: ${rnd.nextUint8()}');
  }

  var bytes=rnd.nextBytes(length);
  //print(bytes);
  return bytes;
}