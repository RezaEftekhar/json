import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/patch%20request/data/data_source/patch_request_data_source.dart';
import 'package:json_place_holder/patch%20request/domain/repository/patch_request.dart';

class PatchRequestRepositoryImpl implements PatchRequestRepository {
  final PatchRequestRemoteDs dataSource;

  PatchRequestRepositoryImpl({required this.dataSource});
  @override
  Future<(Map<String, dynamic>?, Failure?)> patchAllRequests(
      Map<String, dynamic> request) async {
    final response = await dataSource.patchRequest(request);
    return (response, null);
  }
}
