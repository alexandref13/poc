import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:design/design.dart';

class GrantPermissionsScreen extends StatelessWidget{
  const GrantPermissionsScreen({Key? key}) : super(key: key);

  final String _screen = 'grantPermissions';
  final String _nextScreen = '/home';
  final String _backScreen = '/localization';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: L10N(context).text(_screen)['name'],
      backRoute: _backScreen,
      children: [
        const SizedBox(height: 32),
        Text(
          L10N(context).text(_screen)['description'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PrimaryButton(
              isPrimary: false,
              child: Text(L10N(context).text(_screen)['not_grant']),
              onPressed: () => {
                Modular.to.navigate(_backScreen),
              },
            ),

            PrimaryButton(
              child: Text(L10N(context).text(_screen)['grant']),
              onPressed: () => {
                Modular.to.navigate(_nextScreen),
              },
            )
          ],
        ),
      ],
    );
  }
}
