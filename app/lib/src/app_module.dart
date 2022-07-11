import 'package:presenter/presenter.dart';

final sharedPreferencesDriver = SharedPreferencesDriver();

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => sharedPreferencesDriver),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: Home()),
  ];
}
