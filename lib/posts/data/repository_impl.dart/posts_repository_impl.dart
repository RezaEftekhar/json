import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/posts/data/dataSourse/posts_dataSource.dart';
import 'package:json_place_holder/posts/domain/entity/posts_entity.dart';
import 'package:json_place_holder/posts/domain/repository/posts_repo.dart';

class PostsRepositoryImpl implements PostRepo {
  final PostRemoteDataSource postRemoteDs;

  PostsRepositoryImpl({required this.postRemoteDs});

  @override
  Future<(List<PostEntity>?, Failure?)> getAllPosts() async {
    final response = await postRemoteDs.getAllPosts();
    return (response, null);
  }
}
