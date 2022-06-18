import '../../../dependencies/dependencies.dart';
import '../../../stores/stores.dart';


class HomeStore extends NotifierStore<Exception, int> with Disposable {
  final NavigationBarStore bottomBarStore;
  final ScreenTitleStore screenTitleStore;

  HomeStore({
    required this.bottomBarStore,
    required this.screenTitleStore,
  }) : super(0);

  @override
  void dispose() {
    bottomBarStore.destroy();
    destroy();
  }
}

