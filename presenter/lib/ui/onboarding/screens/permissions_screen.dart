import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({Key? key}) : super(key: key);

  final String _screen = 'permissions';
  final String _nextScreen = '/localization';
  final String _backScreen = '/';


  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: L10N(context).text(_screen)['name'],
      onBackPressed: () => Modular.to.navigate(_backScreen),
      children: [
        Heights.h32.value,
        Text(
          L10N(context).text(_screen)['description'],
          style: LightFontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),

        Heights.h32.value,

        Text(
          L10N(context).text(_screen)['content'][0]['description'],
          style: LightFontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        Heights.h16.value,
        Text(
          L10N(context).text(_screen)['content'][1]['description'],
          style: LightFontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        Heights.h16.value,
        Text(
          L10N(context).text(_screen)['content'][2]['description'],
          style: LightFontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        Heights.h32.value,
        Text(
          L10N(context).text(_screen)['text'],
          style: LightFontStyles.paragraphSmall.getText,
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