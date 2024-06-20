import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/Features/posts/domain/repository/posts_repo.dart';

class PatchRequestUsecase {
  final PostRepo repository;

  PatchRequestUsecase({required this.repository});
    Future<(Map<String, dynamic>?, Failure?)> call(Map<String, dynamic> param) =>
      repository.patchAllRequests(param);

}
