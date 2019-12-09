 import 'package:mockito_demo/person.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';


 class MockPerson extends Mock implements Person {}
 void main() {

   group('test mock person', (){
     MockPerson person;
       setUp((){
         person = MockPerson();
       });
     test('test mock person age is 19', () {
        when(person.getAge()).thenReturn(19);
        expect(person.getAge(), 19);
     });
     
     test('test mock person name is lishi', () async{
       when(person.getName()).thenAnswer((answer) => Future<String>.value('lishi'));
       expect(await person.getName(), 'lishi', reason: 'this name should be lishi');
     });
     

   });
 }