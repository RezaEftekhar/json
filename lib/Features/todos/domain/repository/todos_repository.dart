import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/Features/todos/domain/entity/todos_entity.dart';

abstract class TodosRepository {
  Future<(List<TodosEntity>?, Failure?)> getAllTodos();
}
