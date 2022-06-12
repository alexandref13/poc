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
        const SizedBox(height: 32),
        Text(
          L10N(context).text(_screen)['description'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 32),

        Text(
          L10N(context).text(_screen)['content'][0]['description'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          L10N(context).text(_screen)['content'][1]['description'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          L10N(context).text(_screen)['content'][2]['description'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 32),
        Text(
          L10N(context).text(_screen)['text'],
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
