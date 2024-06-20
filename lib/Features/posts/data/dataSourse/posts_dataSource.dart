import 'package:json_place_holder/core/error/server_exception.dart';
import 'package:json_place_holder/core/network/api_provider.dart';
import 'package:json_place_holder/Features/posts/data/model/post_model.dart';
import 'package:json_place_holder/Features/posts/domain/entity/posts_entity.dart';

abstract class PostRemoteDataSource {
  Future<List<PostEntity>>? getAllPosts();
  Future<Map<String, dynamic>>? postRequest(Map<String, dynamic>? request);
  Future<Map<String, dynamic>>? patchRequest(Map<String, dynamic>? request);
  Future<Map<String,dynamic>>? updatePost (Map<String,dynamic>? request);
  
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

  @override
  Future<Map<String, dynamic>>? postRequest(
      Map<String, dynamic>? request) async {
    try {
      final response = await apiProvider.post('posts', data: request);
      return response.data;
    } catch (e) {
      throw ServerException(statusCode: 505, message: e.toString());
    }
  }

  @override
  Future<Map<String, dynamic>>? patchRequest(
      Map<String, dynamic>? request) async {
    try {
      final response = await apiProvider.patch('posts/1', data: request);
      return response.data;
    } catch (e) {
      throw ServerException(statusCode: 505, message: e.toString());
    }
  }
  
  @override
  Future<Map<String, dynamic>>? updatePost(Map<String, dynamic>? request)async {
   try{
     final response =await apiProvider.put('posts/1',data: request);
     return response.data;
   }catch(e){
   throw ServerException(statusCode: 505, message: e.toString());
   }
    
  }
}
