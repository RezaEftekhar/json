import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/todos/domain/entity/todos_entity.dart';
import 'package:json_place_holder/todos/domain/repository/todos_repository.dart';

class GetTodosUsuecase {
  final TodosRepository repository;

  GetTodosUsuecase({required this.repository});
  Future<(List<TodosEntity>?, Failure?)> call() => repository.getAllTodos();
}
