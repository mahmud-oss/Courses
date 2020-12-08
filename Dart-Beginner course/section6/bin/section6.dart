
void main(List<String> arguments) {
  //try-catch-finally
  int a;
  int b=50;
  try{
    int c=a*b;
  }
  on NoSuchMethodError{
    print('Only for NoSuchMethodError. Other errors will be caught by catch block');
  }
  catch(e){
    print('the problem is ${e.toString()}');
  }
  finally{
    print('completed');
  }
  //throwing exception
  try {
    int age;
    int dogYears = 8;

    if(dogYears != 7) throw new Exception('dog years must be 7');

    if(age == null) throw new NullThrownError();

    print(age * dogYears);
  }
  on NullThrownError {
    print('The value was null!!!');
  }
  on NoSuchMethodError {
    print('Sorry no such method');
  }
  catch (e) {
    print('Unknown error: ${e.toString()}');
  }
  finally {
    print('complete');
  }

}
