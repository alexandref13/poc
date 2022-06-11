import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:layouts/layouts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  final String _screen = 'welcome';
  final String _nextScreen = 'permissions';
  final String? _backScreen = null;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: L10N(context).text(_screen)['name'],
      backRoute: _backScreen,
      children: [
        const SizedBox(height: 32),
        Text(
          L10N(context).text(_screen)['title'],
          style: FontStyles.headingSmall.getText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 64),
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
