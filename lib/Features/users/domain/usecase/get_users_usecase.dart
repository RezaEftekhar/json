import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/Features/users/domain/entity/users_entity.dart';
import 'package:json_place_holder/Features/users/domain/repository/users_repository.dart';

class GetUsersUsecase {
  final UsersRepository repository;

  GetUsersUsecase({required this.repository});

  Future<(List<UsersEntity>?, Failure?)> call() => repository.getAllUsers();
}
