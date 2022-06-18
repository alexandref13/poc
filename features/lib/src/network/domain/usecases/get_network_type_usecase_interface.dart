import 'package:core/core.dart';

import '../entities/entities.dart';

abstract class IGetNetworkTypeUsecase {
  Future<Either<Exception, NetworkEntity>> call();
}