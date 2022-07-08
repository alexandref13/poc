import '../../../../dependencies/dependencies.dart';
import '../../todo.dart';

class SetTodoDataRepository implements ISetTodoDataRepository {
  final ISetTodoDataDatasource datasource;

  SetTodoDataRepository({required this.datasource});

  @override
  Future<Either<Exception, Unit>> call(
      {required List<TodoEntity> listTodoEntity}) {
    return datasource(listTodoEntity: listTodoEntity);
  }
}
