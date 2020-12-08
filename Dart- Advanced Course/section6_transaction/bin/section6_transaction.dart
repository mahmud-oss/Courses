import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/connection/connection.dart';
import 'package:sqljocky5/constants.dart';
import 'package:convert/convert.dart';

void main(List<String> arguments) async{
  var pool= new ConnectionSettings(
      user: "user",
      password: "password",
      host: "localhost",
      port: 3306,
      db: "db_connect"
  );
  var conn=await MySqlConnection.connect(pool);
  Transaction transaction=await conn.begin();
  try{
    // var query1=await conn.execute('select * from students');
    // query1.forEach((Row row) {
    //   print('student id:${row[0]} and student name:${row[1]}');
    // });
    var query1= await conn.prepare('insert into students (name) values (?)');
    insert(query1,'Rudy');
    var query2=await conn.prepare('select topic from teacher where name=?');
    find(query2,'Jen');
    var query3=await conn.prepare('delete from students where name=?');
    delete(query3,'Rudy');
    await transaction.commit();
    //no change will appear until commit() executed
  }catch(e){
    print('error');
    await transaction.rollback();
    //if not executed correctly, all changes will be rollbacked
  }finally{
    print('watch out');
    conn.close();
  };

}
void insert(Prepared query,String name) async{
  //var query1= await conn.prepare('insert into students (name) values (?)');
  query.execute([name]);
}
void find(Prepared query, String name) async{
  var res=await query.execute([name]);
  res.forEach((element) {
    print(element);
  });
}
void delete(Prepared query, String name) async{
  query.execute([name]);
}