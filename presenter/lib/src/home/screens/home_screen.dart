import 'dart:io';

import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
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

    store.getPermissions();
  }

  @override
  void dispose() {
    store.dispose();
    super.dispose();
  }

  final store = Modular.get<HomeStore>();

  final String _screen = 'home';
  final String _backScreen = '/welcome';

  removePermissions() {
    if (store.state.isGranted) {
      store.setPermissions(PermissionsEntity(isGranted: false));
      Modular.to.navigate(_backScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: L10N(context).text(_screen)['name'],
      navigationItens: [
        BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: L10N(context).text(_screen)['navigation'][0]['label']),
        BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: L10N(context).text(_screen)['navigation'][1]['label']),
        BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: L10N(context).text(_screen)['navigation'][2]['label']),
      ],
      children: [
        Heights.h64.value,
        Text(
          L10N(context).text(_screen)['paragraph'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        Heights.h64.value,
        PrimaryButton(
          child: Text(L10N(context).text(_screen)['button']),
          onPressed: () => removePermissions(),
        )
      ],
    );
  }
}
