import 'package:core/core.dart';
import '../../domain/domain.dart';

class OnboardingProvider extends NotifierStore<Exception, PermissionsEntity>
    with Disposable {
  OnboardingProvider({
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
        (r) => update(PermissionsEntity()),
      );
      setLoading(false);
    });
  }
}
