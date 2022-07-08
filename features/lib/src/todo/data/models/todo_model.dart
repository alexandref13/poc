import 'dart:convert';

import 'package:features/src/todo/domain/entities/todo_entity.dart';

class TodoModel extends TodoEntity {
  TodoModel({
    required String date,
    required bool isFinished,
    required String name,
  }) : super(date: date, isFinished: isFinished, name: name);

  Map<String, dynamic> toMap() => <String, dynamic>{
        'date': date,
        'isFinished': isFinished,
        'name': name,
      };

  factory TodoModel.fromMap(Map<String, dynamic> map) => TodoModel(
        date: map['date'] ?? '',
        isFinished: map['isFinished'] ?? false,
        name: map['name'] ?? '',
      );
  factory TodoModel.fromEntity(TodoEntity entity) => TodoModel(
        date: entity.date,
        isFinished: entity.isFinished,
        name: entity.name,
      );

  String toJson() => json.encode(toMap());

  TodoEntity toEntity() => this;

  factory TodoModel.fromJson(String source) =>
      TodoModel.fromMap(json.decode(source));
}
