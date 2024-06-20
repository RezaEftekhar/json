import 'package:json_place_holder/Features/posts/domain/repository/posts_repo.dart';
import 'package:json_place_holder/core/error/failure.dart';

class PutPostRequestUsecase {
  final PostRepo repository;

  PutPostRequestUsecase({required this.repository});

  Future<(Map<String,dynamic>?, Failure?)> call(Map<String,dynamic> request) async=>
     await repository.updatePost(request);
}
