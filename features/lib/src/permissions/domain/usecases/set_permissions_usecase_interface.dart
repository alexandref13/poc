import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class ISetPermissionsUsecase {
  Future<Either<Exception, Unit>> call({required PermissionsEntity permissions});
}