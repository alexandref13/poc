import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';

class SetDataConsumptionUsecase implements ISetDataConsumptionUsecase{
  final ISetDataConsumptionRepository _repository;

  SetDataConsumptionUsecase({
    required ISetDataConsumptionRepository repository,
  }) : _repository = repository;

  @override
  Future<Either<Exception, Unit>> call({required DataConsumptionEntity dataConsumption}) {
    return _repository(dataConsumption: dataConsumption);
  }
}