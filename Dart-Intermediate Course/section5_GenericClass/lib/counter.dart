class counter<T extends num>{
  List<T> _items=new List<T>();
  void addall(Iterable<T> iterables) => _items.addAll(iterables);
  void add(T value) => _items.add(value);
  T elementAt(int index) {
    print(_items.elementAt(index));
  }
  T total(){
    num res=0;
    _items.forEach((element) {
      res=res+element;
    });
    print(res);
  }
}