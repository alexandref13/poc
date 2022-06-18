import '../../../../dependencies/dependencies.dart';
import '../../domain/domain.dart';
import '../models/models.dart';

class GetNetworkTypeDatasource extends IGetNetworkTypeDatasource {
  final INetworkService networkService;

  GetNetworkTypeDatasource({required this.networkService});

  @override
  Future<Either<Exception, NetworkEntity>> call() async {
    return networkService().then((value) {
      print('value: $value');
      return value.fold(
        (l) => Left(l),
        (r) => Right(NetworkModel.fromMap(r).toEntity()),
      );
    });
  }
}
