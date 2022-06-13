import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../stores/stores.dart';

class SpeedometerScreen extends StatefulWidget {
  const SpeedometerScreen({Key? key}) : super(key: key);

  final String screen = 'speedometer';

  @override
  State<SpeedometerScreen> createState() => _SpeedometerScreenState();
}

class _SpeedometerScreenState extends State<SpeedometerScreen> {
  @override
  void initState() {
    super.initState();

    _screen = widget.screen;

    store.getPermissions();
  }

  @override
  void dispose() {
    store.dispose();
    super.dispose();
  }

  final store = Modular.get<SpeedometerStore>();

  String? _screen;
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
        Text(L10N(context).text(_screen!)['name']),
        Heights.h64.value,
        RedButton(
          child: Text(L10N(context).text(_screen!)['button']),
          onPressed: () => removePermissions(),
        )
      ],
    );
  }
}
