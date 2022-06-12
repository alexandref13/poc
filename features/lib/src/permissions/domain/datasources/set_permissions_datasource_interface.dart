import 'package:core/core.dart';

import '../entities/permissions_entity.dart';

abstract class ISetPermissionsDatasource {
  Future<Either<Exception, Unit>> call({required PermissionsEntity permissions});
}