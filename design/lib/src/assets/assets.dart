export 'asset_svg.dart';
export 'assets_enum.dart';

import 'assets_enum.dart';


extension AssetsExtension on Assets{
  String get path{
    switch(this){
      case Assets.anatel:
        return 'assets/images/anatel_logo_white.png';
      case Assets.anatelIcon:
        return 'assets/svg/anatel.svg';
      case Assets.eaq:
        return 'assets/images/eaq_logo_white.png';
        case Assets.eaqIcon:
        return 'assets/svg/eaq.svg';
      case Assets.background:
        return 'assets/images/background.png';
    }
  }
}