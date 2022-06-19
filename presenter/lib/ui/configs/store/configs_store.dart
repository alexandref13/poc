import '../../../dependencies/dependencies.dart';
import '../../../stores/stores.dart';

class ConfigsStore extends NotifierStore<Exception, int> with Disposable {
  final PermissionsStore permissionsStore;
  final NetworkStore networkStore;
  final DataConsumptionStore dataConsumptionStore;

  ConfigsStore({
    required this.permissionsStore,
    required this.networkStore,
    required this.dataConsumptionStore,
  }) : super(0);

  @override
  void dispose() {
    permissionsStore.destroy();
    networkStore.destroy();
    dataConsumptionStore.destroy();
    destroy();
  }
}
