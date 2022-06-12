import 'package:presenter/presenter.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: Onboarding()),
    ModuleRoute('/home', module: Home()),
  ];
}