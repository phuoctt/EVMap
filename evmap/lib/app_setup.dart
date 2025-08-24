
import 'package:rabbitevc/service/di/di.dart';

class AppSetup {
  Future<void> setup() async {
    await _setupRepo();
  }

  Future<void> _setupRepo() async {
    await DependencyInjection.inject();
  }
}
