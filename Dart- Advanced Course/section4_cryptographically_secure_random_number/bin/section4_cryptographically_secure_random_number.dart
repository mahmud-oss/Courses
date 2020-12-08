//Added "pointycastle: ^2.0.0" in the pubspec.yaml file

import 'dart:math';

import 'package:pointycastle/pointycastle.dart';
import 'dart:convert';
import 'dart:typed_data';
void main(List<String> arguments) {
  print(randomBytes(16));
}
Uint8List randomBytes(int length){
  final rnd=new SecureRandom('AES/CTR/AUTO-SEED-PRNG');

  final key=new Uint8List(16);
  print(key);
  final keyParam=new KeyParameter(key);
  print(keyParam);
  final params=new ParametersWithIV(keyParam, new Uint8List(16));
  print(params);

  rnd.seed(params);

  var random = new Random();
  print(random);
  for(int i=0;i<random.nextInt(255);i++){
    rnd.nextUint8();
    print('${rnd}: ${rnd.nextUint8()}');
  }

  var bytes=rnd.nextBytes(length);
  print(bytes);
  return bytes;
}