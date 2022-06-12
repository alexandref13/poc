import '../../domain/domain.dart';
import 'package:core/core.dart';

import '../models/permissions_model.dart';

class SetPermissionsDatasource extends ISetPermissionsDatasource {
  final ISharedPreferencesDriver preferences;

  SetPermissionsDatasource({required this.preferences});

  @override
  Future<Either<Exception, Unit>> call({required PermissionsEntity permissions}) async {
    try {
      preferences.setStringByKey(
        key: 'permissions',
        value: PermissionsModel.fromEntity(permissions).toJson(),
      );
      return const Right(unit);
    }catch(e){
      return Left(Exception(e.toString()));
    }
  }
}

