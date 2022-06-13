import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../stores/stores.dart';

class GrantPermissionsScreen extends StatefulWidget {
  const GrantPermissionsScreen({Key? key}) : super(key: key);

  @override
  State<GrantPermissionsScreen> createState() => _GrantPermissionsScreenState();
}

class _GrantPermissionsScreenState extends State<GrantPermissionsScreen> {
  @override
  void initState() {
    super.initState();
  }

  final store = Modular.get<OnboardingStore>();

  final String _screen = 'grantPermissions';
  final String _nextScreen = '/home';
  final String _backScreen = '/localization';

  _fetchOptions(String screen, bool isGranted) async {
    await store.setPermissions(PermissionsEntity(isGranted: isGranted));
    Modular.to.navigate(screen);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      title: L10N(context).text(_screen)['name'],
      onBackPressed: () => Modular.to.navigate(_backScreen),
      children: [
        Heights.h32.value,
        Text(
          L10N(context).text(_screen)['description'],
          style: FontStyles.paragraphSmall.getText,
          textAlign: TextAlign.center,
        ),
        Heights.h32.value,
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PrimaryButton(
              isPrimary: false,
              child: Text(L10N(context).text(_screen)['not_grant']),
              onPressed: () => _fetchOptions(_backScreen, false),
            ),
            PrimaryButton(
              child: Text(L10N(context).text(_screen)['grant']),
              onPressed: () => _fetchOptions(_nextScreen, true),
            )
          ],
        ),
      ],
    );
  }
}
