class dogg {
  String name='fluffy';
  int age=1;
  dogg(String name, int age){
    this.name=name;
    this.age=age;
  }
  void pr(){
    print('${name} is ${age} years old');
  }
}