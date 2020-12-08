import 'dart:io';
import 'dart:async';
import 'dart:convert';
void main(List<String> arguments) async {
  print('starting');
  File file = await appendFile();

  print('appending finished, now reading');
  print(await readFile());
  print('the END');
}
Future<File> appendFile(){
  print('appending to the file');
  File file = new File(Directory.current.path+'/assignment.txt');
  return file.writeAsString('How you doing?\r\n', mode: FileMode.append);
}
Future<String> readFile(){
  print('reading file');
  File file= new File(Directory.current.path+'/assignment.txt');
  return file.readAsString();
}