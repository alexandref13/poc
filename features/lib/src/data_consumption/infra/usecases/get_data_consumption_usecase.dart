import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';

class GetDataConsumptionUsecase implements IGetDataConsumptionUsecase {
  final IGetDataConsumptionRepository _repository;

  GetDataConsumptionUsecase({
    required IGetDataConsumptionRepository repository,
  }) : _repository = repository;

  @override
  Future<Either<Exception, DataConsumptionEntity>> call() {
    return _repository();
  }
}
