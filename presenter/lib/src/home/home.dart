import '../../dependencies/dependencies.dart';

import 'provider/provider.dart';
import 'screens/screens.dart';

class Home extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeProvider()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const HomeScreen(),
      transition: TransitionType.rightToLeftWithFade,
      duration: const Duration(milliseconds: 300),
    ),
    //ChildRoute(
    //  '/permissions',
    //  child: (_, args) => const PermissionsScreen(),
    //  duration: const Duration(milliseconds: 300),
    //),
  ];
}