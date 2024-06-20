import 'package:bloc/bloc.dart';
import 'package:json_place_holder/Features/todos/domain/entity/todos_entity.dart';
import 'package:json_place_holder/Features/todos/domain/usecase/get_todos_usecase.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final GetTodosUsuecase usecase;
  TodosBloc({required this.usecase}) : super(TodosInitial()) {
    on<GetAllTodos>(getTodos);
  }

  
  void getTodos(event, emit) async {
    emit(TodosLoading());
    var (data, error) = await usecase.call();
    data != null
        ? emit(GetAllTodosCompleted(todos: data))
        : emit(TodosError(error: error.toString()));
  }
}
