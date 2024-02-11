import 'package:test_mobile/TESTS/variant.dart';

class Test{
  final String name;

  Test({required this.name,required this.variants});
  bool check(int index,String a){
    String answer=variants[index].answer;
    if(a==answer){
      return true;
    }
    else{
      return false;
    }

  }
  List<Variant> variants;
}