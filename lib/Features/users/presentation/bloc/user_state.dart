part of 'user_bloc.dart';

abstract class UserState {
  List<UsersEntity>? users;
  final String? error;

  UserState({this.users, this.error});
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class GetAllUsersCompleted extends UserState {
  GetAllUsersCompleted({super.users});
}

class UsersError extends UserState {
  UsersError({super.error});
}
