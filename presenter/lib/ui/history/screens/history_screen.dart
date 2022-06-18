import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../store/store.dart';

class HistoryScreen extends StatefulWidget{
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  void initState() {
    super.initState();

    store.permissionsStore.getPermissions();
  }

  @override
  void dispose() {
    store.dispose();
    super.dispose();
  }

  final store = Modular.get<HistoryStore>();

  final String _screen = 'history';
  final String _backScreen = '/welcome';

  removePermissions() {
    if (store.permissionsStore.state.isGranted) {
      store.permissionsStore.setPermissions(PermissionsEntity(isGranted: false));
      Modular.to.navigate(_backScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return OneColumnScreen(
      //title: L10N(context).text(_screen)['name'],
      children: [
        Heights.h64.value,
        Text(L10N(context).text(_screen)['name']),
        Heights.h64.value,
        RedButton(
          child: Text(L10N(context).text(_screen)['button']),
          onPressed: () => removePermissions(),
        )
      ],
    );
  }
}