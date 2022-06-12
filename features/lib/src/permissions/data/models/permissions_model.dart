import 'dart:convert';

import '../../domain/domain.dart';

class PermissionsModel extends PermissionsEntity{
  PermissionsModel({required bool isGranted}) : super(isGranted: isGranted);

  Map<String, dynamic> toMap() => <String, dynamic>{
    'isGranted': isGranted,
  };

  factory PermissionsModel.fromMap(Map<String, dynamic> map) => PermissionsModel(
        isGranted: map['isGranted'] ?? '',
      );
  factory PermissionsModel.fromEntity(PermissionsEntity entity) => PermissionsModel(
        isGranted: entity.isGranted,
      );

  String toJson() => json.encode(toMap());

  PermissionsEntity toEntity() => this;

  factory PermissionsModel.fromJson(String source) =>
      PermissionsModel.fromMap(json.decode(source));
}