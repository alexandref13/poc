import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class IGetNetworkTypeRepository {
  Future<Either<Exception, NetworkEntity>>  call();
}