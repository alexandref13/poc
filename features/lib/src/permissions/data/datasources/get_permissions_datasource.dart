import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';
import '../models/models.dart';

class GetPermissionsDatasource extends IGetPermissionsDatasource {
  final ISharedPreferencesDriver preferences;

  GetPermissionsDatasource({required this.preferences});

  @override
  Future<Either<Exception, PermissionsEntity>> call() async {
    return preferences.getStringByKey(key: 'permissions').then((value) {
      return value.fold(
        (l) => Left(l),
        (r) => Right(PermissionsModel.fromJson(r).toEntity()),
      );
    });
  }
}
