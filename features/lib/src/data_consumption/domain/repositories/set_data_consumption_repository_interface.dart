import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class ISetDataConsumptionRepository {
  Future<Either<Exception, Unit>> call({required DataConsumptionEntity dataConsumption});
}