import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/users/data/data_source.dart/users_data_source.dart';
import 'package:json_place_holder/users/domain/entity/users_entity.dart';
import 'package:json_place_holder/users/domain/repository/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersRemoteDs dataSource;

  UsersRepositoryImpl({required this.dataSource});
  @override
  Future<(List<UsersEntity>?, Failure?)> getAllUsers() async {
    final response = await dataSource.getAllUsers();
    return (response, null);
  }
}
