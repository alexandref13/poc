import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class ISetDataConsumptionUsecase {
  Future<Either<Exception, Unit>> call({required DataConsumptionEntity dataConsumption});
}