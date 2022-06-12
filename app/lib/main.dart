import 'package:flutter/material.dart';

import 'package:presenter/presenter.dart';

import 'src/app_module.dart';
import 'src/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ModularApp(module: AppModule(), child: const AppWidget()),
  );
}
