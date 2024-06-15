import 'package:json_place_holder/comments/data/dataSource/comments_data_source.dart';
import 'package:json_place_holder/comments/domain/entity/comments_entity.dart';
import 'package:json_place_holder/comments/domain/repository/comments_repo.dart';
import 'package:json_place_holder/core/error/failure.dart';

class CommentsRepositoryImpl implements CommentsRepository {
  final CommentsRemoteDs dataSource;

  CommentsRepositoryImpl({required this.dataSource});
  @override
  Future<(List<CommentsEntity>?, Failure?)> getAllComments() async {
    final response = await dataSource.getAllComments();
   
    return (response, null);
  }
}
