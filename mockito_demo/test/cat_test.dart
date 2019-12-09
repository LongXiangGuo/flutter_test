import 'dart:async';
import 'package:mockito/mockito.dart';
import 'package:mockito_demo/cat_demo.dart';
import 'package:test/test.dart';

// Mock class  could not override class method
class MockCat extends Mock implements Cat {}

// Fake class could override supper class method
class FakeCat extends Fake implements Cat {
  @override
  bool eatFood(String food, {bool hungry}) {
    print('Fake eat $food');
    return true;
  }
}

void main() {

  Cat cat;

  setUp((){
    cat = MockCat();
  });
}
