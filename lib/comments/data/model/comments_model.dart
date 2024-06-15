import 'package:json_place_holder/comments/domain/entity/comments_entity.dart';

class CommentsModel extends CommentsEntity {
  CommentsModel(
      {required super.postId,
      required super.id,
      required super.name,
      required super.email,
      required super.body});

  factory CommentsModel.fromJson(Map<String, dynamic> json) {
    return CommentsModel(
        postId: json['postId'],
        id: json['id'],
        name: json['name'],
        email: json['email'],
        body: json['body']);
  }

  static List<CommentsModel> fromList(List data) =>
      data.map((e) => CommentsModel.fromJson(e)).toList();
}
