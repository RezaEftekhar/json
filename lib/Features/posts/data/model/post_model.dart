import 'package:json_place_holder/Features/posts/domain/entity/posts_entity.dart';

class PostModel extends PostEntity {
  PostModel(
      {required super.userId,
      required super.id,
      required super.title,
      required super.body});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }

  static List<PostModel> fromList(List data) =>
      data.map((e) => PostModel.fromJson(e)).toList();
}
