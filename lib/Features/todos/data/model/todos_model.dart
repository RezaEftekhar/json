import 'package:json_place_holder/Features/todos/domain/entity/todos_entity.dart';

class TodosModel extends TodosEntity {
  TodosModel(
      {required super.userId,
      required super.id,
      required super.title,
      required super.completed});

  factory TodosModel.fromJson(Map<String, dynamic> json) {
    return TodosModel(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed']);
  }

  static List<TodosModel> fromList(List data) =>
      data.map((e) => TodosModel.fromJson(e)).toList();
}
