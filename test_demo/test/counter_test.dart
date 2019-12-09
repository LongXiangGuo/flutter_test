import 'package:test/test.dart';
import 'package:test_demo/counter.dart';
//flutter test test/counter_test.dart 
void main() {

  test('test counter should be increment', (){
    final counter = Counter();
    counter.increment();
    expect(counter.value, 1);
  });

  test('counter should be decrement', (){
    final counter = Counter();
    counter.decrement();
    expect(counter.value, -1);
  });

  void main() {
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}
}