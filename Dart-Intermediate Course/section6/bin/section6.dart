import 'dart:io';
void main(List<String> arguments) {
  //sync vs async
  String path ='/';
  Directory dir=new Directory(path);
  print(dir.path);
  if(dir.existsSync()){
    print('ok');
  }
  else{
    print('not ok');
  }
  //system temp directory
  Directory tem= Directory.systemTemp.createTempSync();
  print(tem.path);
  if(tem.existsSync()){
    print('removing directory: ${tem.path}');
    tem.deleteSync();
  }
  else{
    print('${tem.path} could not be found');
    print(tem.listSync());
  }
  //Listing items in a directory
  Directory d1=Directory.current;
  print(d1.path);
  List<FileSystemEntity> list=d1.listSync(recursive: true);
  list.forEach((element) {
    FileStat stat=element.statSync();
    print(element.parent);//element is a file system entity.
    print(stat.mode);//stat is a operating system entity
    print(stat.type);
    print(stat.changed);
    print(stat.modified);
    print(stat.size);
  });
}
