import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/post%20request/domain/repository/post_request_repository.dart';

class PostRequestUsecase {
  final PostRequestRepository repository;
  PostRequestUsecase({required this.repository});

  Future<(Map<String, dynamic>?, Failure?)> call(Map<String, dynamic> param) =>
      repository.postRequest(param);
}
