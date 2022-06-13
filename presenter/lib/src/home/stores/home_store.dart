import '../../../dependencies/dependencies.dart';
import 'navigation_bar_store.dart';
import 'screen_title_store.dart';


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

