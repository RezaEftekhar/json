import 'package:json_place_holder/core/error/server_exception.dart';
import 'package:json_place_holder/core/network/api_provider.dart';

abstract class PostRequestRemoteDs {
  Future<Map<String, dynamic>>? postRequest(Map<String, dynamic>? request);
}

class PostRequestDataSourceImpl implements PostRequestRemoteDs {
  final ApiProvider apiProvider;

  PostRequestDataSourceImpl({required this.apiProvider});
  @override
  Future<Map<String, dynamic>>? postRequest(
      Map<String, dynamic>? request) async {
    try {
      final response = await apiProvider.post('posts', data: request);
      return response.data;
    } catch (e) {
      throw ServerException(statusCode: 505, message: e.toString());
    }
  }
}
