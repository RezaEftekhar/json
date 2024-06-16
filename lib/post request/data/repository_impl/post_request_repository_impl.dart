import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/post%20request/data/data_source/post_request_remote_data_source.dart';
import 'package:json_place_holder/post%20request/domain/repository/post_request_repository.dart';

class PostRequestRepositoryImpl implements PostRequestRepository {
  final PostRequestRemoteDs dataSource;

  PostRequestRepositoryImpl({required this.dataSource});

  @override
  Future<(Map<String, dynamic>?, Failure?)> postRequest(
      Map<String, dynamic> request) async {
    final response = await dataSource.postRequest(request);
    return (response, null);
  }
}
