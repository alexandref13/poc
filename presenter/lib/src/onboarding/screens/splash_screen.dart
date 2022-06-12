import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../stores/stores.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    store.getPermissions().then((value) {
      if (store.state.isGranted) {
        Modular.to.navigate(_homeScreen);
        return;
      }else{
        Modular.to.navigate(_nextScreen);
      }
    });
  }

  @override
  void dispose() {
    store.dispose();
    super.dispose();
  }


  final store = Modular.get<OnboardingStore>();

  final String _screen = 'splash';
  final String _nextScreen = '/welcome';
  final String _homeScreen = '/home';

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      children: [
        Heights.h32.value,
        Center(
          heightFactor: Dots.p12.value,
          child: Text(
            L10N(context).text(_screen)['name'],
            style: FontStyles.headingLarge.getText,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
