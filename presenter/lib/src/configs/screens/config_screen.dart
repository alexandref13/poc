import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../stores/stores.dart';

class ConfigsScreen extends StatefulWidget{
  const ConfigsScreen({Key? key}) : super(key: key);

  @override
  State<ConfigsScreen> createState() => _ConfigsScreenState();
}

class _ConfigsScreenState extends State<ConfigsScreen> {
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

  final store = Modular.get<ConfigsStore>();

  final String _screen = 'configs';
  final String _backScreen = '/welcome';

  removePermissions() {
    if (store.state.isGranted) {
      store.setPermissions(PermissionsEntity(isGranted: false));
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