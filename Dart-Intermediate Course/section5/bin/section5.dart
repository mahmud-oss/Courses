
void main(List<String> arguments) {
  //generics
  List<int> number=new List<int>();
  number.addAll([1,2,3,4]);
  print(number);
  List<String> strings=new List<String>();
  strings.addAll(['ryan','bryan','mayan']);
  print(strings);
  add(1,2);
  add<String>('William',' Bootstrap');
  addnumbers<int>(1,2);
  //more examples
  List<int> values=[1,2,3,4,5];
  int x=addition(10, values);
  print(x);
}
void add<T>(T a, T b){
  print(a.toString()+b.toString());
}
void addnumbers<T extends num>(T a, T b){
  print(a+b);
}
T addition<T extends num>(T a, List<int> val){
  T res=a;
  val.forEach((element) {
    res=res+element;
  });
  return res;
}