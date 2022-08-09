import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ncl_tech_assesment/main.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets('Button availability smoke test', (WidgetTester tester) async {
    //Must use a package to mock Network images because FlutterTests
    //automatically returns 400 status for Image.network widgets
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(const ProviderScope(
        child: MyApp(),
      ));
      //Test if the buttons are available
      expect(find.text("Sky"), findsOneWidget);
      expect(find.text("Escape"), findsOneWidget);
      expect(find.text("Bliss"), findsOneWidget);
      expect(find.text("Brian"), findsNothing);
    });
  });

  testWidgets('Navigate to Details screen', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(
      child: MyApp(),
    ));
    // Tap the sky button and see if we get to Details screen
    await tester.tap(find.widgetWithText(GestureDetector, 'Sky'));
    await tester.pump();
    expect(find.text('Sky'), findsOneWidget);
  });
}
