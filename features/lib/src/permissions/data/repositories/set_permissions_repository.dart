import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';

class SetPermissionsRepository implements ISetPermissionsRepository {
  final ISetPermissionsDatasource datasource;

  SetPermissionsRepository({required this.datasource});

  @override
  Future<Either<Exception, Unit>> call({required PermissionsEntity permissions}) {
    return datasource(permissions: permissions);
  }
}
