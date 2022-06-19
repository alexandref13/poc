import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';

class GetDataConsumptionRepository implements IGetDataConsumptionRepository {
  final IGetDataConsumptionDatasource datasource;

  GetDataConsumptionRepository({required this.datasource});

  @override
  Future<Either<Exception, DataConsumptionEntity>> call() {
    return datasource();
  }
}
