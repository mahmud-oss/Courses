class employee{
  String _name;
  String _position;
  employee([String name='', String position='']){
    _name=name;
    _position=position;
  }
  void pri(){
    print('${_name}\'s position ${_position}');
  }
}