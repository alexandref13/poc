import 'package:flutter/widgets.dart';
import 'localizations_app.dart';

export 'localizations_app.dart';
export 'localization_app_delegate.dart';

class L10N {
  final BuildContext context;

  L10N(this.context);

  Map<String, dynamic> text(String key) => LocalizationsApp.of(context)!.translate(key);
}