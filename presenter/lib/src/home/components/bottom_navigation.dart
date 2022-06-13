import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../stores/stores.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({
    Key? key,
    required String screen,
  }) : _screen = screen,
      super(key: key);

  final store = Modular.get<HomeStore>();

  final String _screen;

  @override
  Widget build(BuildContext context) {
    final items = [
      BottomNavigationBarItem(
          icon: IconsPallete.speedometer.icon,
          label: L10N(context).text(_screen)['navigation'][0]['label']),
      BottomNavigationBarItem(
          icon: IconsPallete.history.icon,
          label: L10N(context).text(_screen)['navigation'][1]['label']),
      BottomNavigationBarItem(
          icon: IconsPallete.configs.icon,
          label: L10N(context).text(_screen)['navigation'][2]['label']),
    ];
    return TripleBuilder(
      store: store.bottomBarStore,
      builder: (_, triple) {
        return BottomNavigationBar(
          items: items,
          currentIndex: store.bottomBarStore.state,
          enableFeedback: true,
          onTap: (index) {
            switch (index) {
              case 0:
                if (store.bottomBarStore.state == 0) break;
                store.bottomBarStore.changeIndex(index);
                store.screenTitleStore
                    .changeTitle(L10N(context).text('speedometer')['name']);
                break;
              case 1:
                if (store.bottomBarStore.state == 1) break;
                store.bottomBarStore.changeIndex(index);
                store.screenTitleStore
                    .changeTitle(L10N(context).text('history')['name']);
                break;
              case 2:
                if (store.bottomBarStore.state == 2) break;
                store.bottomBarStore.changeIndex(index);
                store.screenTitleStore
                    .changeTitle(L10N(context).text('configs')['name']);
                break;
            }
          },
        );
      },
    );
  }
}
