import 'package:core/core.dart';
import 'package:features/features.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: Onboarding()),
    ModuleRoute('/home', module: Home()),
  ];
}