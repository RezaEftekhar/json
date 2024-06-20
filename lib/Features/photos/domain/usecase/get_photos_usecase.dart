import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/Features/photos/domain/entity/photos_entity.dart';
import 'package:json_place_holder/Features/photos/domain/repository/photos_repository.dart';

class GetPhotosUsecase {
  final PhotosRepository repository;

  GetPhotosUsecase({required this.repository});

  Future<(List<PhotosEntity>?, Failure?)> call() => repository.getAllPhotos();
}
