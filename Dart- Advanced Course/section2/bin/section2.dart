import 'dart:async';
int count=0;
void main(List<String> arguments) {
  //timer and  callbacks
  Duration duration=new Duration(seconds: 1);
  Timer timer=new Timer.periodic(duration, timeout);
}
void timeout(Timer timer){
  print('Now time is: ${timeNow()}');
  count++;
  if(count>=5) timer.cancel();
}
String timeNow(){
  DateTime dt=new DateTime.now();
  return dt.toString();
}
