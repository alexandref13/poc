import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class IGetDataConsumptionDatasource {
  Future<Either<Exception, DataConsumptionEntity>> call();
}