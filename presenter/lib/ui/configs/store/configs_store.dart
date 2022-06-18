import '../../../dependencies/dependencies.dart';
import '../../../stores/stores.dart';

class ConfigsStore extends NotifierStore<Exception, int> with Disposable {
  final PermissionsStore permissionsStore;
  final NetworkStore networkStore;

  ConfigsStore({
    required this.permissionsStore,
    required this.networkStore,
  }) : super(0);

  @override
  void dispose() {
    permissionsStore.destroy();
    networkStore.destroy();
    destroy();
  }
}
