import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  final String _screen = 'welcome';
  final String _nextScreen = 'permissions';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: L10N(context).text(_screen)['name'],
      children: [
        Heights.h32.value,
        Text(
          L10N(context).text(_screen)['title'],
          style: FontStyles.headingSmall.getText,
          textAlign: TextAlign.center,
        ),
        Heights.h64.value,
        Text(
          L10N(context).text(_screen)['description'],
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
