
import 'package:section3/animal.dart';
import 'package:section3/fish.dart';

void main(List<String> arguments) {
  //encapsulation
  animal cat=new animal('bob',2,'persian');
  cat.show();
  //getter-setter
  fish f=new fish();
  f.fish_name='fishy';
  f.fish_age=2;
  f.Breed='gold fish';
  print('${f.fish_name},${f.fish_age},${f.Breed}');
  //static
  print(animal.countTotal());
}
