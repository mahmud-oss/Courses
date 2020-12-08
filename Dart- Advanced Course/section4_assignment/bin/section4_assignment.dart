import 'dart:math';
import 'package:collection/collection.dart';
import 'package:pointycastle/pointycastle.dart';
import 'dart:convert';
import 'dart:typed_data';

void main(List<String> arguments) {
  final keyBytes=randomBytes(16);
  final key=new KeyParameter(keyBytes);
  final iv=randomBytes(8);
  final params=ParametersWithIV(key, iv);

  StreamCipher cipher=new StreamCipher('Salsa20');
  cipher.init(true, params);
  //Encryption
  String string='hola jerinimo';
  Uint8List plain_text=Uint8List.fromList(utf8.encode(string));
  Uint8List encrypted=cipher.process(plain_text);
  //Decrypt
  cipher.reset();
  cipher.init(false, params);
  Uint8List decrypted=cipher.process(encrypted);

  //SHA-256
  Digest digest=new Digest('SHA-256');
  Uint8List data1=new Uint8List.fromList(utf8.encode(string));
  Uint8List hash1=digest.process(data1);

  Uint8List data2=new Uint8List.fromList(decrypted);
  Uint8List hash2=digest.process(data2);

  bool eq= const ListEquality().equals(hash1, hash2);
  if(eq){
    print('equal');
  }
  else{
    print('oh no');
  }

}
Uint8List randomBytes(int length){
  final rnd= new SecureRandom('AES/CTR/AUTO-SEED-PRNG');
  final keyBytes=new Uint8List(16);
  final key=new KeyParameter(keyBytes);
  final params=new ParametersWithIV(key, new Uint8List(16));

  rnd.seed(params);

  var random = new Random(length);
  for(int i=0;i<random.nextInt(255);i++){
    rnd.nextUint8();
  }
  var bytes=rnd.nextBytes(length);
  return bytes;
}