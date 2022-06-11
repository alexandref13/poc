import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'localization_app_delegate.dart';

class LocalizationsApp {
  LocalizationsApp(this.locale);

  final Locale locale;
  late Map<String, dynamic> _localizationString;

  Future<bool> load() async {
    String jsonString =
        await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizationString = jsonMap.map((key, value) {
      return MapEntry(key, value);
    });

    return true;
  }

  Map<String, dynamic> translate(String key) => _localizationString[key];

  static LocalizationsApp? of(BuildContext context) {
    return Localizations.of<LocalizationsApp>(context, LocalizationsApp);
  }

  static const LocalizationsAppDelegate delegate = LocalizationsAppDelegate();
}
