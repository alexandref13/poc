import 'dart:async';
import 'dart:io';

import '../../../dependencies/dependencies.dart';

abstract class INetworkService {
  Future<Either<Exception, Map<String, String>>> call();
}

class NetworkService implements INetworkService {
  @override
  Future<Either<Exception,  Map<String, String>>> call() async {
    try {
      final instance = NetworkTypes();

      if(Platform.isAndroid) {
      await Permission.phone.request();
    }
      final response = await instance.currentNetworkStatus();

      return Future.value(Right(response));
    } catch (e) {
      return Left(Exception(e));
    }
  }
}