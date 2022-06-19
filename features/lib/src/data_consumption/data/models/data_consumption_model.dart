import 'dart:convert';

import '../../domain/domain.dart';

class DataConsumptionModel extends DataConsumptionEntity{
  DataConsumptionModel({required double consumption}) : super(consumption: consumption);

  Map<String, dynamic> toMap() => <String, dynamic>{
    'consumption': consumption,
  };

  factory DataConsumptionModel.fromMap(Map<String, dynamic> map) => DataConsumptionModel(
        consumption: map['consumption'] ?? '',
      );
  factory DataConsumptionModel.fromEntity(DataConsumptionEntity entity) => DataConsumptionModel(
        consumption: entity.consumption,
      );

  String toJson() => json.encode(toMap());

  DataConsumptionEntity toEntity() => this;

  factory DataConsumptionModel.fromJson(String source) =>
      DataConsumptionModel.fromMap(json.decode(source));
}