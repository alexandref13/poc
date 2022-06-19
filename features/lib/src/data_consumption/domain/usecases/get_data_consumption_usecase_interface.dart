import '../../../../dependencies/dependencies.dart';

import '../entities/entities.dart';

abstract class IGetDataConsumptionUsecase {
  Future<Either<Exception, DataConsumptionEntity>> call();
}