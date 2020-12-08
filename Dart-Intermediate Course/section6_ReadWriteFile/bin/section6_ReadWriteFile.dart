
import 'dart:io';

void main(List<String> arguments) {
  Directory dir=Directory.current;
  print(dir.path);
  File file = new File(dir.path + '/myfile.txt');
  print(file.length());
  writeFile(file);
  print(file.length());
  readFile(file);
}
void writeFile(File file){
  print(file.length());
  RandomAccessFile raf=file.openSync(mode: FileMode.append);
  raf.writeStringSync('hello hoomans');
  raf.flushSync();
  raf.closeSync();
  print(file.length());
}
void readFile(File file){
  if(!file.existsSync()){
    print('file not found');
    return;
  }
  print('reading string');
  print(file.readAsStringSync());

  List val=file.readAsBytesSync();
  val.forEach((element) {
    print(element);
  });

}