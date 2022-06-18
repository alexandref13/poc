import 'package:core/core.dart';

import '../entities/entities.dart';

abstract class IGetPermissionsUsecase {
  Future<Either<Exception, PermissionsEntity>> call();
}