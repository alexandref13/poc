import '../../../../dependencies/dependencies.dart';
import '../../todo.dart';

class SetTodoDataDatasource implements ISetTodoDataDatasource {
  final ISharedPreferencesDriver preferences;

  SetTodoDataDatasource({required this.preferences});

  @override
  Future<Either<Exception, Unit>> call(
      {required List<TodoEntity> listTodoEntity}) async {
    List<String> list = [];

    for (var element in listTodoEntity) {
      list.add(TodoModel.fromEntity(element).toJson());
    }

    try {
      preferences.setStringListByKey(
        key: 'data',
        value: list,
      );
      return const Right(unit);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
