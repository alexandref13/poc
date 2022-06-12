import 'package:core/core.dart';

import '../entities/permissions_entity.dart';

abstract class IGetPermissionsRepository {
  Future<Either<Exception, PermissionsEntity>>  call();
}