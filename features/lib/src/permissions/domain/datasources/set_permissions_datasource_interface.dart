import '../../../../dependencies/dependencies.dart';

import '../entities/entities.dart';

abstract class ISetPermissionsDatasource {
  Future<Either<Exception, Unit>> call({required PermissionsEntity permissions});
}