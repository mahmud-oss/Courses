

void main(List<String> arguments) {
  //function with positional parameter
  test();
  sayHello('bryan');
  print('your age in dog years is ${dogyear(43)}');
  //function with optional parameter
  downloading('file1.txt');
  downloading('file2.txt', true);
  //function with named parameter
  func(length: 80, width: 90);
  func();
  func1('file1');
  func1('file2', port: 50);
  //function as object
  int age = 7;
  var doggyear = calcyears;
  var catyear = calcyears;
  print(doggyear(age: 10, multiplier: 7));
  print(catyear(age: 10, multiplier: 3));
  //anonymous function
      () {
    print('hennlloo');
  };
  List people = ['radia', 'sadia', 'nadia'];
  people.forEach((element) {
    print(element);
  });
  people.where((element) {
    switch (element) {
      case 'radia':
        return true;
      case 'sadia':
        return true;
      case 'nadia':
        return false;
    }
  }).forEach(print);
}
int calcyears({int age, int multiplier}){
  return age*multiplier;
}
void func1(String s1, {port:70}){
  print('${s1}');
  print('${s1},${port}');
}
void func({int width:10, int length:10}){
  print(length);
  print(width);
}
void test(){
  print('Henlo');
}
void sayHello(String name){
  print('Hello ${name}');
}
int dogyear(int x){
  return x*7;
}
void downloading(String s, [bool val=false]){
  print('downloading ${s}');
  if(val){
    print('openning ${s}');
  }
}