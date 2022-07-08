import '../../../../dependencies/dependencies.dart';
import '../../todo.dart';

class GetTodoDataRepository implements IGetTodoDataRepository {
  final IGetTodoDataDatasource datasource;

  GetTodoDataRepository({required this.datasource});

  @override
  Future<Either<Exception, List<String>>> call() {
    return datasource();
  }
}
