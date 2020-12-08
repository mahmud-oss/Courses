import 'dart:convert';
import 'dart:io';
void main(List<String> arguments) {
  //os variable
  print(Platform.version);
  print(Platform.operatingSystem);
  if(Platform.isWindows){
    print('windows system');
  }
  else{
    print('linux system');
  }
  // Platform.environment.forEach((key, value) {
  //   print('${key}: ${value}');
  // });
  Platform.environment.keys.forEach((element) {print(element);});
  //running process/command
  print('------------------------Running process command--------------------');
  Process.run('ls', ['-l']).then((ProcessResult res) {//keyword "then" is for asynchronous stuffs
    print(res.stdout);
    print(res.exitCode);
  });
  //communicating with a process
  Process.start('cat', []).then((Process process){
    process.stdout.transform(utf8.decoder).listen((event) {
      print(event);
    });
    process.stdin.writeln('hello world');
    process.kill();
    process.exitCode.then((value) {
      print(value);
      return exit(0);
    });
  });
}