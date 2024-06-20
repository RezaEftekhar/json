import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/Features/posts/domain/entity/posts_entity.dart';

abstract class PostRepo {
  Future<(List<PostEntity>?, Failure?)> getAllPosts();
  Future<(Map<String, dynamic>?, Failure?)> postRequest(Map<String, dynamic> request);
  Future<(Map<String,dynamic>?,Failure?)> patchAllRequests(Map<String,dynamic>request);
   Future<(Map<String,dynamic>?,Failure?)> updatePost(Map<String,dynamic>request);
}
