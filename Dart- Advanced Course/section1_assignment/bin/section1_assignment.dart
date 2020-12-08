import 'dart:io';
void main(List<String> arguments) {
  print(Platform.operatingSystem);
  print(Platform.environment);
  print(Platform.environment['PATH']);
}
