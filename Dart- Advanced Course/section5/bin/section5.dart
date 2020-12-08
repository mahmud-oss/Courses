import 'dart:io';
import 'dart:convert';
void main(List<String> arguments) async{
  //TCP server
  var server= await ServerSocket.bind('127.0.0.1', 3000);
  print('listening');
  //called();
  await for(var socket in server){

    socket.listen((List values) {
      print('${socket.remoteAddress} -> ${utf8.decode(values)}');
    });
  }


}
// void called ()async{
//   //TCP client
//   var client=await Socket.connect('127.0.0.1', 3000);
//   print('connected');
//   client.write('Yeah, ok. Working');
//   print('sent');
//   await client.close();//write() is synchronous, but close() is asynchronous. because close() consumes
                          //a lot of time, write() does not.
//   exit(0);
// }