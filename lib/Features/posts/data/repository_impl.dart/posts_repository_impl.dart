import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/Features/posts/data/dataSourse/posts_dataSource.dart';
import 'package:json_place_holder/Features/posts/domain/entity/posts_entity.dart';
import 'package:json_place_holder/Features/posts/domain/repository/posts_repo.dart';

class PostsRepositoryImpl implements PostRepo {
  final PostRemoteDataSource postRemoteDs;

  PostsRepositoryImpl({required this.postRemoteDs});

  @override
  Future<(List<PostEntity>?, Failure?)> getAllPosts() async {
    final response = await postRemoteDs.getAllPosts();
    return (response, null);
  }

  @override
  Future<(Map<String, dynamic>?, Failure?)> postRequest(
      Map<String, dynamic> request) async {
    final response = await postRemoteDs.postRequest(request);
    return (response, null);
  }

  @override
  Future<(Map<String, dynamic>?, Failure?)> patchAllRequests(
      Map<String, dynamic> request) async {
    final response = await postRemoteDs.patchRequest(request);
    return (response, null);
  }

  @override
  Future<(Map<String, dynamic>?, Failure?)> updatePost(
      Map<String, dynamic> request) async {
    final response = await postRemoteDs.updatePost(request);
    return (response, null);
  }
}
