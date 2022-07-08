import 'package:features/features.dart';

abstract class IGetTodoDataUsecase {
  Future<Either<Exception, List<TodoEntity>>> call();
}
