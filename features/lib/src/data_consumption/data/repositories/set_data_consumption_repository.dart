import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';

class SetDataConsumptionRepository implements ISetDataConsumptionRepository {
  final ISetDataConsumptionDatasource datasource;

  SetDataConsumptionRepository({required this.datasource});

  @override
  Future<Either<Exception, Unit>> call({required DataConsumptionEntity dataConsumption}) {
    return datasource(dataConsumption: dataConsumption);
  }
}
