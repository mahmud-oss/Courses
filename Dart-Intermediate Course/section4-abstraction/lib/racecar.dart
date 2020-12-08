import 'car.dart';

class racecar extends car{
  racecar(){
    this.hasWheels=true;
    this.hasHorns=true;
  }
  void honk_honk(){
    print('beep beep from racecar');
    super.honk_honk();
  }
}