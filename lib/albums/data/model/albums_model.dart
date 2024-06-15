import 'package:json_place_holder/albums/domain/entity/albums_entity.dart';

class AlbumsModel extends AlbumsEntity {
  AlbumsModel({required super.userId, required super.id, required super.title});

  factory AlbumsModel.fromJson(Map<String, dynamic> json) {
    return AlbumsModel(
        userId: json['userId'], id: json['id'], title: json['title']);
  }
  static List<AlbumsModel> frimList(List data) =>
      data.map((e) => AlbumsModel.fromJson(e)).toList();
}
