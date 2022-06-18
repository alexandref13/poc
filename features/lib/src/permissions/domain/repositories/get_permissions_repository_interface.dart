import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class IGetPermissionsRepository {
  Future<Either<Exception, PermissionsEntity>>  call();
}