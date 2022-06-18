import '../../dependencies/dependencies.dart';
import '../../stores/stores.dart';

import 'store/store.dart';
import 'screens/screens.dart';

import '../speedometer/speedometer.dart';
import '../history/history.dart';
import '../configs/configs.dart';

class Home extends Module {
  @override
  final List<Bind> binds = [
    ///GetPermissions
    Bind.lazySingleton((i) => GetPermissionsDatasource(
        preferences: i.get<SharedPreferencesDriver>())),
    Bind.lazySingleton((i) => GetPermissionsRepository(
        datasource: i.get<GetPermissionsDatasource>())),
    Bind.lazySingleton((i) =>
        GetPermissionsUsecase(repository: i.get<GetPermissionsRepository>())),

    ///SetPermissions
    Bind.lazySingleton((i) => SetPermissionsDatasource(
        preferences: i.get<SharedPreferencesDriver>())),
    Bind.lazySingleton((i) => SetPermissionsRepository(
        datasource: i.get<SetPermissionsDatasource>())),
    Bind.lazySingleton((i) =>
        SetPermissionsUsecase(repository: i.get<SetPermissionsRepository>())),

    ///GetNetworkType
    Bind.lazySingleton((i) =>
        GetNetworkTypeDatasource(networkService: i.get<NetworkService>())),
    Bind.lazySingleton((i) => GetNetworkTypeRepository(
        datasource: i.get<GetNetworkTypeDatasource>())),
    Bind.lazySingleton((i) =>
        GetNetworkTypeUsecase(repository: i.get<GetNetworkTypeRepository>())),

    ///Stores
    Bind.lazySingleton((i) => PermissionsStore(
          getPermissionsUsecase: i.get<GetPermissionsUsecase>(),
          setPermissionsUsecase: i.get<SetPermissionsUsecase>(),
        )),
    Bind.lazySingleton((i) => NetworkStore(
          getNetworkTypeUsecase: i.get<GetNetworkTypeUsecase>(),
        )),

    ///Page Stores
    Bind.lazySingleton((i) => HomeStore(
          bottomBarStore: NavigationBarStore(),
          screenTitleStore: ScreenTitleStore(),
        )),
    Bind.lazySingleton(
        (i) => SpeedometerStore(permissionsStore: i.get<PermissionsStore>())),
    Bind.lazySingleton(
        (i) => HistoryStore(permissionsStore: i.get<PermissionsStore>())),
    Bind.lazySingleton((i) => ConfigsStore(
          permissionsStore: i.get<PermissionsStore>(),
          networkStore: i.get<NetworkStore>(),
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
  ];
}
