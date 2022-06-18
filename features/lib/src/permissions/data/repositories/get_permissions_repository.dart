import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';

class GetPermissionsRepository extends IGetPermissionsRepository {
  final IGetPermissionsDatasource datasource;

  GetPermissionsRepository({required this.datasource});

  @override
  Future<Either<Exception, PermissionsEntity>> call() {
    return datasource();
  }
}
