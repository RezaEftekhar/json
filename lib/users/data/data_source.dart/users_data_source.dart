import 'package:json_place_holder/core/error/server_exception.dart';
import 'package:json_place_holder/core/network/api_provider.dart';
import 'package:json_place_holder/users/data/model/users_model.dart';
import 'package:json_place_holder/users/domain/entity/users_entity.dart';

abstract class UsersRemoteDs {
  Future<List<UsersEntity>>? getAllUsers();
}

class UsersDtaSourceImpl implements UsersRemoteDs {
  final ApiProvider apiProvider;

  UsersDtaSourceImpl({required this.apiProvider});
  @override
  Future<List<UsersEntity>>? getAllUsers() async {
    try {
      final response = await apiProvider.get('users');
      return UsersModel.fromList(response.data);
    } catch (e) {
      throw ServerException(statusCode: 505, message: e.toString());
    }
  }
}
