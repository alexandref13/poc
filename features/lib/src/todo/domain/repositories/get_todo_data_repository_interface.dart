import '../../../../dependencies/dependencies.dart';

abstract class IGetTodoDataRepository {
  Future<Either<Exception, List<String>>> call();
}
