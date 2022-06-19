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

    ///GetDataConsumption
    Bind.lazySingleton((i) => GetDataConsumptionDatasource(preferences: i.get<SharedPreferencesDriver>())),
    Bind.lazySingleton((i) => GetDataConsumptionRepository(datasource: i.get<GetDataConsumptionDatasource>())),
    Bind.lazySingleton((i) => GetDataConsumptionUsecase(repository: i.get<GetDataConsumptionRepository>())),

    ///SetDataConsumption
    Bind.lazySingleton((i) => SetDataConsumptionDatasource(preferences: i.get<SharedPreferencesDriver>())),
    Bind.lazySingleton((i) => SetDataConsumptionRepository(datasource: i.get<SetDataConsumptionDatasource>())),
    Bind.lazySingleton((i) => SetDataConsumptionUsecase(repository: i.get<SetDataConsumptionRepository>())),

    ///Stores
    Bind.lazySingleton((i) => PermissionsStore(
          getPermissionsUsecase: i.get<GetPermissionsUsecase>(),
          setPermissionsUsecase: i.get<SetPermissionsUsecase>(),
        )),
    Bind.lazySingleton((i) => NetworkStore(
          getNetworkTypeUsecase: i.get<GetNetworkTypeUsecase>(),
        )),
    Bind.lazySingleton((i) => DataConsumptionStore(
          getDataConsumptionUsecase: i.get<GetDataConsumptionUsecase>(),
          setDataConsumptionUsecase: i.get<SetDataConsumptionUsecase>(),
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
        dataConsumptionStore: i.get<DataConsumptionStore>(),
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
