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
