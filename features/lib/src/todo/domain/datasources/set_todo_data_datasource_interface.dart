import 'package:features/src/todo/domain/entities/entities.dart';

import '../../../../dependencies/dependencies.dart';

abstract class ISetTodoDataDatasource {
  Future<Either<Exception, Unit>> call(
      {required List<TodoEntity> listTodoEntity});
}
