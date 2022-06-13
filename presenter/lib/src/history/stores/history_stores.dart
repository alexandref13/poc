import '../../../dependencies/dependencies.dart';

class HistoryStore extends NotifierStore<Exception, PermissionsEntity>
    with Disposable {
  HistoryStore({
    required this.getPermissionsUsecase,
    required this.setPermissionsUsecase,
  }) : super(PermissionsEntity());

  final IGetPermissionsUsecase getPermissionsUsecase;
  final ISetPermissionsUsecase setPermissionsUsecase;

  @override
  void dispose() {
    destroy();
  }

  Future<void> getPermissions() async {
    setLoading(true);
    await getPermissionsUsecase().then((value) {
      value.fold(
        (l) => setError(l),
        (r) => update(r),
      );
      setLoading(false);
    });
  }

  Future<void> setPermissions(PermissionsEntity permissions) async {
    setLoading(true);
    await setPermissionsUsecase(permissions: permissions).then((value) {
      value.fold(
        (l) => setError(l),
        (r) => update(permissions),
      );
      setLoading(false);
    });
  }
}
