import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class ISetPermissionsRepository {
  Future<Either<Exception, Unit>> call({required PermissionsEntity permissions});
}