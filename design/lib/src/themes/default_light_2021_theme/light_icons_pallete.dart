import 'package:flutter/material.dart';

import '../../assets/assets.dart';

enum LightIconsPallete {
  anatel,
  eaq,
  speedometer,
  configs,
  history,
}

extension LightIconsPalleteExtension on LightIconsPallete {
  Widget get icon {
    switch (this) {
      case LightIconsPallete.anatel:
        return AssetSvg(Assets.anatelIcon.path);
      case LightIconsPallete.eaq:
        return AssetSvg(Assets.eaqIcon.path);
      case LightIconsPallete.speedometer:
        return const Icon(Icons.speed_outlined);
      case LightIconsPallete.configs:
        return const Icon(Icons.settings);
      case LightIconsPallete.history:
        return const Icon(Icons.history);
    }
  }
}
