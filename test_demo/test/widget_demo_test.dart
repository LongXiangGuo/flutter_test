import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/widget_demo.dart';

void main() {

  group('test my widget app with title and message ', (){
     testWidgets('test my widget app with title and message', (tester) async{
     
      await tester.pumpWidget(WidgetDemoApp(title: 'title', message: 'message',));

        expect(find.text('title'), findsOneWidget);
        expect(find.text('message'), findsOneWidget);
 
     });
  });
}