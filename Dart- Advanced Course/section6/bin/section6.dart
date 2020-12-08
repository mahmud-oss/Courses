//added "sqljocky5: ^2.2.1" in pubspec.yaml. then flutter pub get and pub get in cmd
//To fit a "Future" type in a "var" type variable => declare the function as async and put "await" on the
//right side of "=".
import 'package:sqljocky5/connection/connection.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'dart:convert';
//import 'package:sqljocky5/utils.dart';
import 'package:sqljocky5/constants.dart';
import 'dart:io';
void main(List<String> arguments) async{
  //row selection
  var pool= new ConnectionSettings(
      user: "user",
      password: "password",
      host: "localhost",
      port: 3306,
      db: "db_connect"
  );
  var conn=await MySqlConnection.connect(pool);
  var results = await conn.execute('select * from teacher');
  //print('${results.length}');
  results.forEach((Row row) {
    print(row[0].toString()+' : '+row[1].toString()+' -> '+row[2].toString());
  });
  //conn.close();
  //using queries
  var query= await conn.prepare('insert into teacher (name, topic) values(?,?)');
  //query.execute(['Bobby', 'Santa']);
  insert(query, 'Bob', 'Clown');
  insert(query,'Trump', 'Gymnast');
  //conn.close();
  //names and indexes
  var queryNaI=await conn.execute('select name, topic from teacher');
  await queryNaI.forEach((Row row) {
    print(row[0].toString()+'->'+row[1].toString());
  });
  conn.close();
}
void insert(Prepared query, String name, String topic) async{
  query.execute([name,topic]);
}