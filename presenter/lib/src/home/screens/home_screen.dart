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
    return DefaultScreen(
      title: L10N(context).text(_screen)['name'],
      navigationItens: [
        BottomNavigationBarItem(
            icon: IconsPallete.speedometer.icon,
            label: L10N(context).text(_screen)['navigation'][0]['label']),
        BottomNavigationBarItem(
            icon: IconsPallete.history.icon,
            label: L10N(context).text(_screen)['navigation'][1]['label']),
        BottomNavigationBarItem(
            icon: IconsPallete.configs.icon,
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
      ],
    );
  }
}
