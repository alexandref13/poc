import 'dart:convert';

import '../../domain/domain.dart';

class NetworkModel extends NetworkEntity{
  NetworkModel({required String type}) : super(type: type);

  Map<String, dynamic> toMap() => <String, dynamic>{
    'type': type,
  };

  factory NetworkModel.fromMap(Map<String, dynamic> map) => NetworkModel(
        type: map['type'] ?? '',
      );
  factory NetworkModel.fromEntity(NetworkEntity entity) => NetworkModel(
        type: entity.type,
      );

  String toJson() => json.encode(toMap());

  NetworkEntity toEntity() => this;

  factory NetworkModel.fromJson(String source) =>
      NetworkModel.fromMap(json.decode(source));
}