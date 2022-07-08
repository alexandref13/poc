import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class ISetTodoDataUsecase {
  Future<Either<Exception, Unit>> call(
      {required List<TodoEntity> listTodoEntity});
}
