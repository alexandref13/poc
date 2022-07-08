import 'package:presenter/stores/stores.dart';

import '../../dependencies/dependencies.dart';

import 'screens/screens.dart';

class Home extends Module {
  @override
  final List<Bind> binds = [
    //SetTodoData
    Bind.lazySingleton((i) =>
        SetTodoDataDatasource(preferences: i.get<SharedPreferencesDriver>())),
    Bind.lazySingleton((i) =>
        SetTodoDataRepository(datasource: i.get<SetTodoDataDatasource>())),
    Bind.lazySingleton(
        (i) => SetTodoDataUsecase(repository: i.get<SetTodoDataRepository>())),

    //GetTodoData
    Bind.lazySingleton((i) =>
        GetTodoDataDatasource(preferences: i.get<SharedPreferencesDriver>())),
    Bind.lazySingleton((i) =>
        GetTodoDataRepository(datasource: i.get<GetTodoDataDatasource>())),
    Bind.lazySingleton(
        (i) => GetTodoDataUsecase(repository: i.get<GetTodoDataRepository>())),

    //Page Stores
    Bind.lazySingleton((i) => TodoStore(
          setTodoDataUsecase: i.get<SetTodoDataUsecase>(),
          getTodoDataUsecase: i.get<GetTodoDataUsecase>(),
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
