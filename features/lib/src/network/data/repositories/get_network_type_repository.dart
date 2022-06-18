import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';

class GetNetworkTypeRepository implements IGetNetworkTypeRepository {
  final IGetNetworkTypeDatasource datasource;

  GetNetworkTypeRepository({required this.datasource});

  @override
  Future<Either<Exception, NetworkEntity>> call() {
    return datasource();
  }
}