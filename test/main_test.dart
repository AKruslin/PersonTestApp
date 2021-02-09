import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/main.dart';

void main() {
  testWidgets('Celebrate birthday increments person age test',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    //Verify that person age starts at 22
    expect(find.text("Age:22"), findsOneWidget);

    await tester.tap(find.text("Celebrate Birthday!"));
    await tester.pump();

    //Verify that person age ends at 22
    expect(find.text("Age:23"), findsOneWidget);
  });

  testWidgets('Celebrate birthday increments person age for 78 times test',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    //Verify that person age starts at 22
    expect(find.text("Age:22"), findsOneWidget);

    for (var i = 0; i < 78; i++) {
      await tester.tap(find.text("Celebrate Birthday!"));
    }
    await tester.pump();

    //Verify that person age ends at 100
    expect(find.text("Age:100"), findsOneWidget);
  });

  testWidgets('Go Incognito hides person firstName and lastName test',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    //Verify that person name starts with Antonio Kruslin
    expect(find.text("Antonio Kruslin"), findsOneWidget);

    await tester.tap(find.text("Go Incognito!"));
    await tester.pump();

    //Verify that person name ends with John Doe
    expect(find.text("John Doe"), findsOneWidget);
  });

  // test first and last name and all funcionalities
  testWidgets('Change first name of person test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    //Verify that person name starts with Antonio Kruslin
    expect(find.text("Antonio Kruslin"), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'Marko');
    await tester.tap(find.text("Change your FirstName!"));
    await tester.pump();

    //Verify that person name ends with Marko Kruslin
    expect(find.text("Marko Kruslin"), findsOneWidget);
  });

  testWidgets('Change last name of person test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    //Verify that person name starts with Antonio Kruslin
    expect(find.text("Antonio Kruslin"), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'Peric');
    await tester.tap(find.text("Change your LastName!"));
    await tester.pump();

    //Verify that person name ends with Antonio Peric
    expect(find.text("Antonio Peric"), findsOneWidget);
  });
}
