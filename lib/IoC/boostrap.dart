import 'package:flutter_github/services/exampleService.dart';
import 'package:get_it/get_it.dart';

/// container holding all registered objects across app
GetIt container = GetIt.instance;

/// Register objects to be used by GetIt
class Bootstrap {
  // due to the app being a single page this can run many times.
  static bool hasRun = false;

  /// Initialise GetIt container with all objects that can be resolved
  static void init() {
    if (!hasRun) {
      hasRun = true;
      container.registerSingleton<ExampleService>(new ExampleService());
    }
  }
}
