import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class ISetDataConsumptionDatasource {
  Future<Either<Exception, Unit>> call({required DataConsumptionEntity dataConsumption});
}