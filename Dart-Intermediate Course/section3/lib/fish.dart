class fish{
  String _name;
  int _age;
  String breed;
  set fish_name(String name){
    _name= name;
  }
  set fish_age(int x){
    _age=x;
  }
  set Breed(String name){
    breed=name;
  }
  String get fish_name {
    return _name;
  }
  int get fish_age {
    return _age;
  }
  String get Breed {
    return breed;
  }
}
