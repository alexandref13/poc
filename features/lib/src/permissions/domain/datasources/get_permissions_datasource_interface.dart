import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class IGetPermissionsDatasource {
  Future<Either<Exception, PermissionsEntity>> call();
}