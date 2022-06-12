import 'package:flutter/material.dart';

import '../../assets/assets.dart';

enum IconsPallete {
  anatel,
  eaq,
  speedometer,
  configs,
  history,
}

extension IconsPalleteExtension on IconsPallete {
  Widget get icon {
    switch (this) {
      case IconsPallete.anatel:
        return SvgWidget(Assets.anatelIcon.path);
      case IconsPallete.eaq:
        return SvgWidget(Assets.eaqIcon.path);
      case IconsPallete.speedometer:
        return const Icon(Icons.speed_outlined);
      case IconsPallete.configs:
        return const Icon(Icons.settings);
      case IconsPallete.history:
        return const Icon(Icons.history);
    }
  }
}
