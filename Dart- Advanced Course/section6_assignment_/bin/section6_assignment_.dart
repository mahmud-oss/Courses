import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/connection/connection.dart';
void main(List<String> arguments) async{
  var pool= new ConnectionSettings(
      user: "user",
      password: "password",
      host: "localhost",
      port: 3306,
      db: "db_connect"
  );
  var conn=await MySqlConnection.connect(pool);
  var query=await conn.prepare('insert into teacher(name, topic) values(?,?)');
  insert(query,'Rick','Pickle');
  conn.close();
}
void insert(Prepared query,String name, String topic){
  query.execute([name,topic]);
}
