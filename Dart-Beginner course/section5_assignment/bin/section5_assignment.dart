void main(List<String> arguments) {
  count();

}
void count(){
  for(int i=1;i<=10;i++){
    print(i);
    if(i==5){
      print1('Half way there');
    }
  }
}
void print1(String s){
  print(s);
}