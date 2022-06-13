import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../../src.dart';
import '../stores/stores.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final store = Modular.get<HomeStore>();

  final String _screen = 'home';
  //final String _backScreen = '/welcome';

  @override
  Widget build(BuildContext context) {
    store.screenTitleStore.changeTitle(L10N(context).text('speedometer')['name']);

    final screens = [
      const SpeedometerScreen(),
      const HistoryScreen(),
      const ConfigsScreen()
    ];

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

    final bottomNavigationBar = TripleBuilder(
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

    return DefaultScreen(
      name: TripleBuilder(
        store: store.screenTitleStore,
        builder: (_, triple) {
          return Text(store.screenTitleStore.state);
        },
      ),
      bottomNavigationBar: bottomNavigationBar,
      body: TripleBuilder(
        store: store.bottomBarStore,
        builder: (_, triple) {
          return screens[store.bottomBarStore.state];
        },
      ),
    );
  }
}
