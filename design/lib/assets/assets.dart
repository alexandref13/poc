enum Assets{
  anatel,
  eaq,
  background,
}

extension AssetsExtension on Assets{
  String get path{
    switch(this){
      case Assets.anatel:
        return 'assets/images/anatel_logo_white.png';
      case Assets.eaq:
        return 'assets/images/eaq_logo_white.png';
      case Assets.background:
        return 'assets/images/background.png';
    }
  }
}