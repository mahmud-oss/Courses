
void main(List<String> arguments) {
  //assert
  print('starting');
  var age = 31;
  assert(age==31);//checks if age equals 31 else throws exception
  print('finished');
  //if-else
  if(age==31){
    print('aged');
  }
  else{
    print('not aged');
  }
  //switch
  age = 10;

  switch(age) {
    case 18:
      print('You are 18, you can vote');
      break;

    case 21:
      print('You are 21, you are an adult');
      break;

    case 65:
      print('You are 65, you can retire');
      break;

    default:
      print('Nothing special about this age');

  }
  //do-while
  int i=0;
  do{
    print(i);
    i++;
    age++;
  }while(age<30);
  //while
  i=2;
  while(i!=4){
    age++;
    i++;
    print(age);
  }
  //for and for-each
  List people=['bryan','ryan','mayan'];
  for(int i=0;i<people.length;i++){
    print('at ${i} index: ${people[i]}');
  }
  people.forEach((person) {print(person);});
  }

