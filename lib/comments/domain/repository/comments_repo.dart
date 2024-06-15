import 'package:json_place_holder/comments/domain/entity/comments_entity.dart';
import 'package:json_place_holder/core/error/failure.dart';

abstract class CommentsRepository {
  Future<(List<CommentsEntity>?, Failure?)> getAllComments();
}
