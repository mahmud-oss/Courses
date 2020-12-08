import 'dart:io';
import 'dart:convert';
void main(List<String> arguments) {
  var data='hello hello hello';
  List datatosend=utf8.encode(data);
  int port=3000;
  RawDatagramSocket.bind('127.0.0.1', port).then((RawDatagramSocket udpsocket) {

    udpsocket.listen((RawSocketEvent event) {
      if(event==RawSocketEvent.read){
        Datagram dg= udpsocket.receive();
        print(utf8.decode(dg.data));
      }
    });
    //client
    //it is possible to comment the codes for client server. Then run the following command in the termonal
    //nc -u 127.0.0.1 3000 and type messages in command line
    udpsocket.send(datatosend, InternetAddress.loopbackIPv4, port);
    print('send');
  });
}
