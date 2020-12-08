import 'dart:io';
void main(List<String> arguments) {
  Directory dir=Directory.current;
  print(dir.path);
  File file = new File(dir.path+'assignment.txt');
  write(file);
  read(file);
  print(file.path);
  file.deleteSync();
}
void write(File file){
  RandomAccessFile raf=file.openSync(mode: FileMode.write);
  raf.writeStringSync('Hello World');
  raf.flushSync();
  raf.closeSync();
}
void read(File file){
  if(!file.existsSync()){
    print('file does not exist');
    return;
  }
  print(file.readAsStringSync());
}