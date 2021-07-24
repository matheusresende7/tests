import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tests/views/home.dart';

void main() {



  testWidgets('AppBar Validation', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Home (),));

    final appBar = find.byType(AppBar);
    final appBarWidget = tester.widget<AppBar>(appBar);

    ///Title
    final titleAppBar = find.widgetWithText(AppBar, 'Teste');
    expect(titleAppBar, findsOneWidget);

    ///Actions buttons
    expect(appBarWidget.centerTitle, true);
  });



  group ('Body Validation', () {

    testWidgets('Content Validation', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: Home (),));

      ///Counter Text 0
      final counterText = find.text('0');
      expect(counterText, findsOneWidget);

      ///Add Button
      final addButton = find.widgetWithIcon(FloatingActionButton, Icons.add);
      expect(addButton, findsNWidgets(1));

      ///Remove Button
      final removeButton = find.widgetWithIcon(FloatingActionButton, Icons.remove);
      expect(removeButton, findsNWidgets(1));
    },);



    testWidgets('Counter Validation', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: Home (),));

      final text0 = find.text('0');
      final text7 = find.text('7');

      ///Verify that counter starts at 0
      expect(text0, findsOneWidget);
      expect(text7, findsNothing);

      ///Tap on FloatingActionButtonDefault until get 17
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.remove));
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.remove));
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
      await tester.tap(find.widgetWithIcon(FloatingActionButton, Icons.add));
      await tester.pump();

      ///Verify that counter finished at 7
      expect(text0, findsNothing);
      expect(text7, findsOneWidget);
    },);

  });



}