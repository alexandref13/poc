enum ConnectionTypes {
  none,
  unknown,
  wifi,
  ethernet,
  celular_2g,
  celular_3g,
  celular_4g,
  celular_5g,
}

extension ConnectionTypesExtension on ConnectionTypes {
  String get type {
    switch (this) {
      case ConnectionTypes.wifi:
        return "wifi";
      case ConnectionTypes.ethernet:
        return "ethernet";
      case ConnectionTypes.celular_2g:
        return "2g";
      case ConnectionTypes.celular_3g:
        return "3g";
      case ConnectionTypes.celular_4g:
        return "4g";
      case ConnectionTypes.celular_5g:
        return "5g";
      case ConnectionTypes.none:
      case ConnectionTypes.unknown:
      default:
        return "";
    }
  }
}

//extension ConnectionTypesStringExtension on ConnectionNames {
//  ConnectionTypes get name {
//    switch (this) {
//      case "wifi":
//        return ConnectionTypes.wifi;
//      case "ethernet":
//        return ConnectionTypes.ethernet;
//      case "2g":
//        return ConnectionTypes.celular_2g;
//      case "3g":
//        return ConnectionTypes.celular_3g;
//      case "4g":
//        return ConnectionTypes.celular_4g;
//      case "5g":
//        return ConnectionTypes.celular_5g;
//      case "":
//      case "unknown":
//      case "none":
//      default:
//        return ConnectionTypes.none;
//    }
//  }
//}
//