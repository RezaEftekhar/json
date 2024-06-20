import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/Features/users/domain/entity/users_entity.dart';

abstract class UsersRepository{
  Future<(List<UsersEntity>?,Failure?)> getAllUsers();
}