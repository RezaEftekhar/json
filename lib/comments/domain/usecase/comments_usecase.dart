import 'package:json_place_holder/comments/domain/entity/comments_entity.dart';
import 'package:json_place_holder/comments/domain/repository/comments_repo.dart';
import 'package:json_place_holder/core/error/failure.dart';

class CommentsUsecase {
  final CommentsRepository repository;

  CommentsUsecase({required this.repository});

  Future<(List<CommentsEntity>?, Failure?)> call() =>  repository.getAllComments();
    
}
