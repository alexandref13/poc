import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class ISetTodoDataRepository {
  Future<Either<Exception, Unit>> call(
      {required List<TodoEntity> listTodoEntity});
}
