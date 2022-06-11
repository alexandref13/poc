import 'package:core/core.dart';

import '../entities/permissions_entity.dart';

abstract class IGetPermissionsDatasource {
  Future<Either<Exception, PermissionsEntity>> call();
}