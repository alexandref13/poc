import 'package:flutter/material.dart';

import 'package:core/core.dart';
import 'package:design/design.dart';



class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'EAQ App',
      theme: LightTheme().getTheme,
      supportedLocales: const [Locale('pt', 'BR'), Locale('en', 'US')],
      localizationsDelegates: const [
        LocalizationsApp.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocale) {
        return supportedLocale.firstWhere(
            (e) =>
                e.languageCode == locale?.languageCode &&
                e.countryCode == locale?.countryCode,
            orElse: () => supportedLocale.first);
      },
    );
  }
}