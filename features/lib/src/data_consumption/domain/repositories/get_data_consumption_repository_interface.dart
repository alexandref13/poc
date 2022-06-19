import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class IGetDataConsumptionRepository {
  Future<Either<Exception, DataConsumptionEntity>>  call();
}