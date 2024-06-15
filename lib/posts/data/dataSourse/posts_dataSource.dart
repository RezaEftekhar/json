import 'package:json_place_holder/core/error/server_exception.dart';
import 'package:json_place_holder/core/network/api_provider.dart';
import 'package:json_place_holder/posts/data/model/post_model.dart';
import 'package:json_place_holder/posts/domain/entity/posts_entity.dart';

abstract class PostRemoteDataSource {
  Future<List<PostEntity>>? getAllPosts();
}

class PostRemoteDateSourseImpl implements PostRemoteDataSource {
  final ApiProvider apiProvider;

  PostRemoteDateSourseImpl({required this.apiProvider});
  @override
  Future<List<PostEntity>>? getAllPosts() async {
    try {
      final response = await apiProvider.get('posts');
      return PostModel.fromList(response.data);
    } catch (e) {
      throw ServerException(statusCode: 505, message: e.toString());
    }
  }
}
