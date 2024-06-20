import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/Features/todos/data/data_source/todos_data_source.dart';
import 'package:json_place_holder/Features/todos/domain/entity/todos_entity.dart';
import 'package:json_place_holder/Features/todos/domain/repository/todos_repository.dart';

class TodosRepositoryImpl implements TodosRepository {
  final TodosRemoteDs dataSource;

  TodosRepositoryImpl({required this.dataSource});
  @override
  Future<(List<TodosEntity>?, Failure?)> getAllTodos() async {
    final response = await dataSource.getTodos();
    return (response, null);
  }
}
