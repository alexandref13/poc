import '../../../../dependencies/dependencies.dart';
import '../../todo.dart';

class SetTodoDataUsecase implements ISetTodoDataUsecase {
  final ISetTodoDataRepository _repository;

  SetTodoDataUsecase({
    required ISetTodoDataRepository repository,
  }) : _repository = repository;

  @override
  Future<Either<Exception, Unit>> call(
      {required List<TodoEntity> listTodoEntity}) {
    return _repository(listTodoEntity: listTodoEntity);
  }
}
