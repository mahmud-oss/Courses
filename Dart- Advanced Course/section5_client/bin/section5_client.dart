//at first run section5 project or uncomment called() function in section5
import 'dart:io';
import 'dart:convert';
void main(List<String> arguments) async {
  //TCP client
  var client=await Socket.connect('127.0.0.1', 3000);
  print('connected');
  client.write('Yeah, ok. Working');
  print('sent');
  await client.close();//write() is synchronous, but close() is asynchronous. because close() consumes
                        //a lot of time, write() does not.
  exit(0);
}
