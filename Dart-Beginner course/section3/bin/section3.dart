import 'dart:collection';//for queue
enum colors {red,green,blue}

void main(List<String> arguments) {
  print(colors.values);
  print(colors.blue);
  //list
  List test=[1,2,3,4];
  print('size of the list: ${test.length}');
  print('first item is: ${test[0]}');
  print(test.elementAt(3));

  List things= new List();//generic list
  things.add(1);
  things.add('cat');
  things.add(2);
  print(things);

  List<int> numbers=new List<int>();//specific list
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  print(numbers);

  //set=list but unordered and duplicated values are ignored
  Set<int> num=new Set<int>();
  num.add(1);
  num.add(2);
  num.add(3);
  num.add(4);
  num.add(1);
  print(num);
  //queue
  Queue numnum=new Queue();
  numnum.add(1);
  numnum.add(2);
  numnum.addFirst(3);
  print(numnum);
  numnum.removeFirst();
  print(numnum);
  numnum.removeLast();
  print(numnum);
  //map[generic]
  Map people = {'Dad': 'bryan','son': 'ryan','mom': 'rehan'};
  print(people);
  print('the keys are: ${people.keys}');
  print('dad is ${people['Dad']}');
  //map[specific]
  Map<String,String> peop=new Map<String,String>();
  peop.putIfAbsent('dad', () => 'bryan');//() is an anonymous function
  print('dad is ${peop['dad']}');
  print('son is ${peop['son']}');
  peop.putIfAbsent('son', () => 'ryan');
  print('dad is ${peop['dad']}');
  print('son is ${peop['son']}');
}
