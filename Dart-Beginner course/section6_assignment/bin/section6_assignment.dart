
import 'dart:io';

void main(List<String> arguments) {
  int age=inputs();

  try{
    if(age<18) throw new Exception('too young');
    if(age>99) throw new Exception('too old');


  } catch(e){
    print('Error: ${e.toString()}');

  } finally{

  }


}
int inputs(){
  int age=int.parse(stdin.readLineSync());
  return age;
}