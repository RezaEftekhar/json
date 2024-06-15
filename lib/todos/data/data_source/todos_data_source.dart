import 'package:json_place_holder/core/error/server_exception.dart';
import 'package:json_place_holder/core/network/api_provider.dart';
import 'package:json_place_holder/todos/data/model/todos_model.dart';
import 'package:json_place_holder/todos/domain/entity/todos_entity.dart';

abstract class TodosRemoteDs {
  Future<List<TodosEntity>>? getTodos();
}

class TodosDataSourceImpl implements TodosRemoteDs {
  final ApiProvider apiProvider;

  TodosDataSourceImpl({required this.apiProvider});

  @override
  Future<List<TodosEntity>>? getTodos() async {
    try {
      final response = await apiProvider.get('todos');
      print('nnnnnnnnnnnnnnnnnnnnnnnnnn${response.data}');
       print('mmmmmmmmmmmmmmmmmmmmmmmm${response.statusCode}');
      return TodosModel.fromList(response.data);
    } catch (e) {
      print('ttttttttyyyyyyyyyyyy${e.toString()}');
      throw ServerException(statusCode: 505, message: e.toString());
    }
  }
}
