import '../../../dependencies/dependencies.dart';

class NetworkStore extends NotifierStore<Exception, NetworkEntity>
    with Disposable {
  NetworkStore({required this.getNetworkTypeUsecase}) : super(NetworkEntity());

  final IGetNetworkTypeUsecase getNetworkTypeUsecase;

  @override
  void dispose() {
    destroy();
  }

  Future<void> getNetworkType() async {
    setLoading(true);
    await getNetworkTypeUsecase().then((value) {
      value.fold(
        (l) => setError(l),
        (r) => update(r),
      );
      setLoading(false);
    });
  }
}
