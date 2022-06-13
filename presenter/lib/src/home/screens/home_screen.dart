import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../../src.dart';
import '../stores/stores.dart';
import '../components/components.dart';

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

    return DefaultScreen(
      name: TripleBuilder(
        store: store.screenTitleStore,
        builder: (_, triple) {
          return Text(store.screenTitleStore.state);
        },
      ),
      bottomNavigationBar: BottomNavigation(screen: _screen),
      body: TripleBuilder(
        store: store.bottomBarStore,
        builder: (_, triple) {
          return screens[store.bottomBarStore.state];
        },
      ),
    );
  }
}
