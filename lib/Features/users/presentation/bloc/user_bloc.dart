import 'package:bloc/bloc.dart';
import 'package:json_place_holder/Features/users/domain/entity/users_entity.dart';
import 'package:json_place_holder/Features/users/domain/usecase/get_users_usecase.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUsersUsecase usecase;
  UserBloc({required this.usecase}) : super(UserInitial()) {
    on<GetAllUsers>(getUsers);
  }

  void getUsers(event, emit) async {
    emit(UserLoading());
    var (data, error) = await usecase.call();
    data != null
        ? emit(GetAllUsersCompleted(users: data))
        : emit(UsersError(error: error.toString()));
  }
}
