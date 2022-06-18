import '../../../dependencies/dependencies.dart';
import '../../../stores/stores.dart';


class SpeedometerStore extends NotifierStore<Exception, int> with Disposable {
  final PermissionsStore permissionsStore;

  SpeedometerStore({required this.permissionsStore}) : super(0);

  @override
  void dispose() {
    permissionsStore.destroy();
    destroy();
  }
}
