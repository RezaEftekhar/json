part of 'todos_bloc.dart';

abstract class TodosState {
   List<TodosEntity>? todos;
  final String? error;

  TodosState({this.todos, this.error});
}

final class TodosInitial extends TodosState {}

class TodosLoading extends TodosState {}

class GetAllTodosCompleted extends TodosState {
  GetAllTodosCompleted({super.todos});
}

class TodosError extends TodosState {
  TodosError({super.error});
}
