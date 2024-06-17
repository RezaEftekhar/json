import 'package:json_place_holder/core/error/server_exception.dart';
import 'package:json_place_holder/core/network/api_provider.dart';

abstract class PatchRequestRemoteDs {
  Future<Map<String, dynamic>>? patchRequest(Map<String, dynamic>? request);
}

class PatchRequestDataSourceImpl implements PatchRequestRemoteDs {
  final ApiProvider apiProvider;

  PatchRequestDataSourceImpl({required this.apiProvider});
  @override
  Future<Map<String, dynamic>>? patchRequest(
      Map<String, dynamic>? request) async {
    try {
      final response = await apiProvider.patch('posts/1',data: request);
      return response.data;
    } catch (e) {
      throw ServerException(statusCode: 505, message: e.toString());
    }
  }
}
