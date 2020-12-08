//encapsulation
class animal{
  String _name;
  int _age;
  String breed;
  static int count=0;
  animal(String name, int age, String breed){
  _name=name;
  _age=age;
  this.breed=breed;
  count++;
  }
  void prin(){
    print('${_name},${_age},${breed} ');
  }
  void show(){
    prin();
  }
  static int countTotal(){
    return count;
  }
}