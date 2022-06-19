import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';
import '../models/models.dart';


class GetDataConsumptionDatasource implements IGetDataConsumptionDatasource {
  final ISharedPreferencesDriver preferences;

  GetDataConsumptionDatasource({required this.preferences});

  @override
  Future<Either<Exception, DataConsumptionEntity>> call() async {
    return preferences.getStringByKey(key: 'dataConsumption').then((value) {
      return value.fold(
        (l) => Left(l),
        (r) => Right(DataConsumptionModel.fromJson(r).toEntity()),
      );
    });
  }
}