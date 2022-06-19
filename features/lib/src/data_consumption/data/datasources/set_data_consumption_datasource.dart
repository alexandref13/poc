import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';
import '../models/models.dart';

class SetDataConsumptionDatasource implements ISetDataConsumptionDatasource {
  final ISharedPreferencesDriver preferences;

  SetDataConsumptionDatasource({required this.preferences});

  @override
  Future<Either<Exception, Unit>> call({required DataConsumptionEntity dataConsumption}) async {
    try {
      preferences.setStringByKey(
        key: 'dataConsumption',
        value: DataConsumptionModel.fromEntity(dataConsumption).toJson(),
      );
      return const Right(unit);
    }catch(e){
      return Left(Exception(e.toString()));
    }
  }
}