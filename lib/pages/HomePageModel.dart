import 'package:flutter/material.dart';
import 'package:flutter_github/IoC/boostrap.dart';
import 'package:flutter_github/services/exampleService.dart';

/// Main Page refactored from Flutter inital code
class HomePageModel extends ChangeNotifier {
  /// resolve required services
  final ExampleService authenticationService = container.get<ExampleService>();

  /// Refactored Title
  String title = 'Main Page';

  /// Refactored Counter
  int counter = 0;

  /// New Method, reset the counter
  void resetCounter() {
    this.counter = 0;
  }

  // Incremets the internal counter by.
  ///
  /// IN: none
  /// OUT: none
  void incrementCounter() {
    this.counter++;

    // notify listenting to changes of the counter
    notifyListeners();
  }
}
