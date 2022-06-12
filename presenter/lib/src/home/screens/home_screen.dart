import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String _screen = 'home';
  //final String? _nextScreen = null;
  final String _backScreen = '/grant_permissions';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: L10N(context).text(_screen)['name'],
      onBackPressed: () => Modular.to.navigate(_backScreen),
      isBottomNavigation: true,
      children: [
        const SizedBox(height: 64),
        Text(
          L10N(context).text(_screen)['paragraph'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 64),
      ],
    );
  }
}
