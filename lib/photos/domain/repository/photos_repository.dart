import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/photos/domain/entity/photos_entity.dart';

abstract class PhotosRepository {
  Future<(List<PhotosEntity>?, Failure?)> getAllPhotos();
}
