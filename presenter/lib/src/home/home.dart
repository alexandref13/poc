import '../../dependencies/dependencies.dart';

import 'stores/stores.dart';
import 'screens/screens.dart';

class Home extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => GetPermissionsDatasource(
          preferences: i.get<SharedPreferencesDriver>(),
        )),
    Bind.lazySingleton((i) => GetPermissionsRepository(
          datasource: i.get<GetPermissionsDatasource>(),
        )),
    Bind.lazySingleton((i) => GetPermissionsUsecase(
          repository: i.get<GetPermissionsRepository>(),
        )),
    Bind.lazySingleton((i) => SetPermissionsDatasource(
          preferences: i.get<SharedPreferencesDriver>(),
        )),
    Bind.lazySingleton((i) => SetPermissionsRepository(
          datasource: i.get<SetPermissionsDatasource>(),
        )),
    Bind.lazySingleton((i) => SetPermissionsUsecase(
          repository: i.get<SetPermissionsRepository>(),
        )),
    Bind.lazySingleton((i) => HomeStore(
          setPermissionsUsecase: i.get<ISetPermissionsUsecase>(),
          getPermissionsUsecase: i.get<IGetPermissionsUsecase>(),
        )),
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