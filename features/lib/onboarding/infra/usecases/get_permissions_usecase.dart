import 'package:core/core.dart';

import '../../domain/domain.dart';

class GetPermissionsUsecase implements IGetPermissionsUsecase {
  final IGetPermissionsRepository _repository;

  GetPermissionsUsecase({
    required IGetPermissionsRepository repository,
  }) : _repository = repository;

  @override
  Future<Either<Exception, PermissionsEntity>> call() {
    return _repository();
  }
}
