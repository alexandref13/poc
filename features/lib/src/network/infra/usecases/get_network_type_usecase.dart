import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';

class GetNetworkTypeUsecase implements IGetNetworkTypeUsecase {
  final IGetNetworkTypeRepository _repository;

  GetNetworkTypeUsecase({
    required IGetNetworkTypeRepository repository,
  }) : _repository = repository;

  @override
  Future<Either<Exception, NetworkEntity>> call() {
    return _repository();
  }


}