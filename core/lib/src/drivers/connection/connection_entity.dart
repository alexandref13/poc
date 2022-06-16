import 'package:core/src/drivers/connection/connection_types_enum.dart';

class ConnectionEntity {
  ConnectionEntity({
    required this.type,
    required this.wifiSSID,
    required this.extraInfo,
    required this.ip,
  });

  final ConnectionTypes type;
  final String wifiSSID;
  final dynamic extraInfo;
  final String ip;
}

class ConnectionModel extends ConnectionEntity {
  ConnectionModel({
    required ConnectionTypes type,
    required String wifiSSID,
    required dynamic extraInfo,
    required String ip,
  }) : super(
          type: type,
          wifiSSID: wifiSSID,
          extraInfo: extraInfo,
          ip: ip,
        );

  @override
  String toString() {
    return "ConnectionModel [type: $type, wifiSSID: $wifiSSID, extraInfo: $extraInfo, ip: $ip]";
  }
}
