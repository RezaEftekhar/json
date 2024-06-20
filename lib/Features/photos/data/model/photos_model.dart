import 'package:json_place_holder/Features/photos/domain/entity/photos_entity.dart';

class PhotosModel extends PhotosEntity {
  PhotosModel(
      {required super.albumId,
      required super.id,
      required super.title,
      required super.url,
      required super.thumbnailUrl});
  factory PhotosModel.fromJson(Map<String, dynamic> json) {
    return PhotosModel(
        albumId: json['albumId'],
        id: json['id'],
        title: json['title'],
        url: json['url'],
        thumbnailUrl: json['thumbnailUrl']);
  }
  static List<PhotosModel> fromList(List data) =>
      data.map((e) => PhotosModel.fromJson(e)).toList();
}
