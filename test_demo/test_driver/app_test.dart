import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
/**
 *  - 不能通知打开2个模拟器
 *  - setUpAll 函数需要使用代闭包的语法
 *  - 所有driver的操作需要使用await同步,保证执行顺序
 *  - 重复设置 test function时，需注意自动生成的`import 'package:flutter_test/flutter_test.dart' as prefix0;`
*/
void main() {
  group('performing counter test', () {
    FlutterDriver driver;
    final counterText = find.byValueKey('my_count');
    final addIcon = find.byValueKey('add_btn');
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
  
    test('test counter  initial value is 0', () async {
      expect(await driver.getText(counterText), '0');
    });
    test('test counter increment 1', () async {
      //SerializableFinder
      //局部变量
      // final counterText = find.byValueKey('my_count');
      // final addIcon = find.byValueKey('add_btn');

      await driver.tap(addIcon);
      expect(await driver.getText(counterText), '1');
     
    });
  });
}
