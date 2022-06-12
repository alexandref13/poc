import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';

class LocalizationScreen extends StatelessWidget {
  const LocalizationScreen({Key? key}) : super(key: key);

  final String _screen = 'localization';
  final String _nextScreen = '/grant_permissions';
  final String _backScreen = '/permissions';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: L10N(context).text(_screen)['name'],
      onBackPressed: () => Modular.to.navigate(_backScreen),
      children: [
        Heights.h32.value,
        Text(
          L10N(context).text(_screen)['content'][0]['paragraph'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        Heights.h16.value,
        Text(
          L10N(context).text(_screen)['content'][1]['paragraph'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        Heights.h16.value,
        Text(
          L10N(context).text(_screen)['content'][2]['paragraph'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        PrimaryButton(
          child: Text(L10N(context).text(_screen)['next']),
          onPressed: () => Modular.to.navigate(_nextScreen),
        )
      ],
    );
  }
}
