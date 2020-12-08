//making Async function working as synchronous
//what "awais" really does is telling on asynchronous function to wait until the object, the futuew is
//providing delivered
//https://www.freecodecamp.org/news/dart-asynchronous-programming-futures-5b20c62a91c0/
import 'dart:io';
import 'dart:async';
void main(List<String> arguments) async{
  print('starting');
  File file=await addFile();
  print('Ended');
}
Future<File> addFile(){
  print('running');
  File file=new File(Directory.current.path+'/test.txt');
  DateTime now=new DateTime.now();
  return file.writeAsString(now.toString()+'\r\n', mode: FileMode.append);
  
  //file.writeAsString('${DateTime.now()}');
  //return file;
}