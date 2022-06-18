import 'package:presenter/presenter.dart';

final sharedPreferencesDriver = SharedPreferencesDriver();
final networkService = NetworkService();

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => sharedPreferencesDriver),
    Bind.singleton((i) => networkService),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: Onboarding()),
    ModuleRoute('/home', module: Home()),
  ];
}
