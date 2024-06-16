import 'package:json_place_holder/core/error/failure.dart';

abstract class PostRequestRepository {
  Future<(Map<String, dynamic>?, Failure?)> postRequest(
      Map<String, dynamic> request);
}
