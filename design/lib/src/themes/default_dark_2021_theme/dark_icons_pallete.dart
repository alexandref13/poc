import 'package:flutter/material.dart';

import '../../assets/assets.dart';

enum DarkIconsPallete {
  anatel,
  eaq,
  speedometer,
  configs,
  history,
}

extension DarkIconsPalleteExtension on DarkIconsPallete {
  Widget get icon {
    switch (this) {
      case DarkIconsPallete.anatel:
        return AssetSvg(Assets.anatelIcon.path);
      case DarkIconsPallete.eaq:
        return AssetSvg(Assets.eaqIcon.path);
      case DarkIconsPallete.speedometer:
        return const Icon(Icons.speed_outlined);
      case DarkIconsPallete.configs:
        return const Icon(Icons.settings);
      case DarkIconsPallete.history:
        return const Icon(Icons.history);
    }
  }
}
