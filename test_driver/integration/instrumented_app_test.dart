import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {

  group('Counter App', () {

    final counterText = find.byValueKey('counter');
    final addButton = find.byValueKey('increment');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('starts at 0', () async {
      // Use the `driver.getText` method to verify the counter starts at 0.
      expect(await driver.getText(counterText), "0");
    });

    test('increments the counter', () async {
      // First, tap the button 7 times.
      await driver.tap(addButton);
      await driver.tap(addButton);
      await driver.tap(addButton);
      await driver.tap(addButton);
      await driver.tap(addButton);
      await driver.tap(addButton);
      await driver.tap(addButton);

      // Then, verify the counter text is incremented by 10.
      expect(await driver.getText(counterText), "7");
    });

  });

}