import '../../../../dependencies/dependencies.dart';
import '../entities/entities.dart';

abstract class IGetNetworkTypeDatasource {
  Future<Either<Exception, NetworkEntity>> call();
}