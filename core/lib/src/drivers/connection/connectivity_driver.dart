
abstract class IConnectivityDriver {
  Future<bool> get isOnline;
  Future<String> get connectionType;
}

class ConnectivityDriver implements IConnectivityDriver {
  //final Connectivity _connectivity;
  //ConnectivityStatus _status;

  @override
  Future<bool> get isOnline => throw UnimplementedError();

  @override
  Future<String> get connectionType => throw UnimplementedError();
}
