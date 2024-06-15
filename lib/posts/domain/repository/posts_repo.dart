import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/posts/domain/entity/posts_entity.dart';

abstract class PostRepo {
  Future<(List<PostEntity>?,Failure?)> getAllPosts();
}
