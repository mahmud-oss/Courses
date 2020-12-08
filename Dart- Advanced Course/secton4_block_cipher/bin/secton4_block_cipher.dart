import 'package:pointycastle/pointycastle.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:collection/collection.dart';
import 'dart:math';
void main(List<String> arguments) {
  //AES block cipher
  //randomBytes => key => params
  final key=randomBytes(16);
  final params=new KeyParameter(key);

  BlockCipher cipher=new BlockCipher('AES');
  cipher.init(true, params);
  //Encrypt
  String string='hello world';
  Uint8List plain_text=Uint8List.fromList(utf8.encode(string.padRight(cipher.blockSize)));
  //padding should be done using cryptographic padding
  Uint8List encrypted=cipher.process(plain_text);
  //decrypt
  cipher.reset();
  cipher.init(false, params);
  Uint8List decrypted=cipher.process(encrypted);
  //
  print(utf8.decode(plain_text));
  print(base64Encode(plain_text));
  //print(utf8.decode(encrypted));
  print(base64Encode(encrypted));
  //print(utf8.decode(decrypted));
  print(base64Encode(decrypted));
  print(utf8.decode(decrypted).trim());
  
}
Uint8List randomBytes(int length){
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
