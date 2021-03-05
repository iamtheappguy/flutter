// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_github/IoC/boostrap.dart';
import 'package:flutter_github/pages/HomePageModel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter', () {
    Bootstrap.init();

    test('Counter value should be default Zero', () {
      final model = HomePageModel();
      expect(model.counter, 0);
    });

    test('Counter value should be one on single increment', () {
      final model = HomePageModel();
      model.incrementCounter();
      expect(model.counter, 1);
    });

    test('Counter value should be two or two increments', () {
      final model = HomePageModel();
      model.incrementCounter();
      model.incrementCounter();
      expect(model.counter, 2);
    });

    test('Counter value should zero on reset', () {
      final model = HomePageModel();
      model.incrementCounter();
      model.resetCounter();
      expect(model.counter, 0);
    });
  });
}
