import '../../../dependencies/dependencies.dart';
import '../../../stores/stores.dart';


class HistoryStore extends NotifierStore<Exception, int> with Disposable {
  final PermissionsStore permissionsStore;

  HistoryStore({required this.permissionsStore}) : super(0);

  @override
  void dispose() {
    permissionsStore.destroy();
    destroy();
  }
}