import '../../../../dependencies/dependencies.dart';

import '../entities/entities.dart';

abstract class IGetNetworkTypeUsecase {
  Future<Either<Exception, NetworkEntity>> call();
}