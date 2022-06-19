import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';

class SetPermissionsUsecase implements ISetPermissionsUsecase{
  final ISetPermissionsRepository _repository;

  SetPermissionsUsecase({
    required ISetPermissionsRepository repository,
  }) : _repository = repository;

  @override
  Future<Either<Exception, Unit>> call({required PermissionsEntity permissions}) {
    return _repository(permissions: permissions);
  }
}