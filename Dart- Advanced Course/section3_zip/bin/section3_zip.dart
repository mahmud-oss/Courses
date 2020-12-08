//added "archive: ^2.0.13" in pubspec.yaml file so that we can use archive.dart
//If path is a symbolic link, rather than a file, then the methods of File
// operate on the ultimate target of the link, except for delete and deleteSync,
// which operate on the link.
import 'package:archive/archive.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path/path.dart' as p;
void main(List<String> arguments) {
  List files=new List();
  Directory.current.listSync().forEach((FileSystemEntity fse) {
    if(fse.statSync().type==FileSystemEntityType.file){
      files.add(fse.path);
    }
  });
  String zipFile='/home/mahmud/IdeaProjects/section3_zip/test.zip';
  makeZip(files,zipFile);
  unzip(zipFile,'/home/mahmud/IdeaProjects/section3_zip/unzip');
}
void makeZip(List files,String file){
  Archive archive=new Archive();

  files.forEach((path) {
    File file= new File(path);
    print(file.length());
    // print(path);
    // if(file.existsSync()){print('hm');}
    //print('${p.basename(path)}||${file.lengthSync()}||${file.readAsBytesSync()}');
    ArchiveFile archiveFile= new ArchiveFile(p.basename(path), file.lengthSync(), file.readAsBytesSync());
    //archive file is a record
    archive.addFile(archiveFile);
  });
  ZipEncoder encoder=new ZipEncoder();
  File f=new File(file);
  f.writeAsBytesSync(encoder.encode(archive));
}
void unzip(String zipfile, String path){
  print(zipfile);
  File file=new File(zipfile);

  Archive archive=new ZipDecoder().decodeBytes(file.readAsBytesSync());
  archive.forEach((ArchiveFile archiveFile) {
    File file=new File(path+'/'+archiveFile.name);
    file.createSync(recursive: true);
    file.writeAsBytesSync(archiveFile.content);
  });
  print('decompressed');
}
