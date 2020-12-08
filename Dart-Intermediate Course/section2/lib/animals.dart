class animals {
  String _name; //_ indicates private variable
  animals([String _name1 = '']) {
    _name = _name1;
  }

  void printing() {
    if (_name == '') {
      print('henlo, hooman');
    }
    else {
      print('hello ${_name}');
    }
  }
}
