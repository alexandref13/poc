import '../../../../dependencies/dependencies.dart';

abstract class IGetTodoDataDatasource {
  Future<Either<Exception, List<String>>> call();
}
