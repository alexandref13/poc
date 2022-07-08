import 'dart:convert';

import '../../../../dependencies/dependencies.dart';
import '../../todo.dart';

class GetTodoDataUsecase implements IGetTodoDataUsecase {
  final IGetTodoDataRepository _repository;

  GetTodoDataUsecase({
    required IGetTodoDataRepository repository,
  }) : _repository = repository;

  @override
  Future<Either<Exception, List<TodoEntity>>> call() {
    return _repository().then((value) {
      List<TodoEntity> list = [];
      return value.fold(
        (l) => Left(l),
        (r) {
          for (var element in r) {
            var todoEntity = TodoModel.fromMap(json.decode(element));

            list.add(todoEntity);
          }

          return Right(list);
        },
      );
    });
  }
}
