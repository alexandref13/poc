import 'package:core/core.dart';

import 'domain/domain.dart';
import 'data/data.dart';
import 'infra/infra.dart';
import 'presenter/presenter.dart';

class Onboarding extends Module {
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

    Bind.lazySingleton((i) => OnboardingProvider(
          setPermissionsUsecase: i.get<ISetPermissionsUsecase>(),
          getPermissionsUsecase: i.get<IGetPermissionsUsecase>(),
        )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const OnboardingScreen(),
      transition: TransitionType.rightToLeftWithFade,
      duration: const Duration(milliseconds: 300),
    ),
    ChildRoute(
      '/permissions',
      child: (_, args) => const PermissionsScreen(),
      duration: const Duration(milliseconds: 300),
    ),
    ChildRoute(
      '/localization',
      child: (_, args) => const LocalizationScreen(),
      duration: const Duration(milliseconds: 300),
    ),
    ChildRoute(
      '/grant_permissions',
      child: (_, args) => const GrantPermissionsScreen(),
      duration: const Duration(milliseconds: 300),
    ),
  ];
}
