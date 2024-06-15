import 'package:json_place_holder/comments/data/model/comments_model.dart';
import 'package:json_place_holder/comments/domain/entity/comments_entity.dart';
import 'package:json_place_holder/core/error/server_exception.dart';
import 'package:json_place_holder/core/network/api_provider.dart';

abstract class CommentsRemoteDs {
  Future<List<CommentsEntity>>? getAllComments();
}

class CommentsDataSourceImpl implements CommentsRemoteDs {
  final ApiProvider apiProvider;

  CommentsDataSourceImpl({required this.apiProvider});
  @override
  Future<List<CommentsEntity>>? getAllComments() async {
    try {
      final response = await apiProvider.get('comments');

      return CommentsModel.fromList(response.data);
    } catch (e) {
      throw ServerException(statusCode: 505, message: e.toString());
    }
  }
}
