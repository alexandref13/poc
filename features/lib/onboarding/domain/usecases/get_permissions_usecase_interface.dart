import 'package:core/core.dart';

import '../entities/permissions_entity.dart';

abstract class IGetPermissionsUsecase {
  Future<Either<Exception, PermissionsEntity>> call();
}