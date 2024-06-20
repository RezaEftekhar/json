import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/Features/posts/domain/entity/posts_entity.dart';
import 'package:json_place_holder/Features/posts/domain/repository/posts_repo.dart';

class GetPostsUsecase {
  final PostRepo repository;

  GetPostsUsecase({required this.repository});

  Future<(List<PostEntity>?, Failure?)> call() => repository.getAllPosts();
}
