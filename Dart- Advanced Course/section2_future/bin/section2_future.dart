//Async is a way to work parallely. When compiler sees "then" keyword, it doesnot wait for "then"
// block to execute. It goes to next block of code.
//https://www.freecodecamp.org/news/dart-asynchronous-programming-futures-5b20c62a91c0/
import 'dart:io';
import 'dart:async';
void main(List<String> arguments) {
  String path=Directory.current.path+'/text.txt';
  File file = new File(path);

  Future<RandomAccessFile> f=file.open(mode: FileMode.append);
  f.then((RandomAccessFile raf) {
    print('file has opened');
    raf.writeString('Writing in text file').then((value){
      print('file has appended');
    }).catchError(()=>print('error occured')).whenComplete(() => raf.close());
    
  });
  print('the END');
}
