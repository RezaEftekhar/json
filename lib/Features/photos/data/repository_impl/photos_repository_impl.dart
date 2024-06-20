import 'package:json_place_holder/core/error/failure.dart';
import 'package:json_place_holder/Features/photos/data/dataSource/photos_data_source.dart';
import 'package:json_place_holder/Features/photos/domain/entity/photos_entity.dart';
import 'package:json_place_holder/Features/photos/domain/repository/photos_repository.dart';

class PhotosRepositoryImpl implements PhotosRepository {
  final PhotosRemoteDs dataSource;

  PhotosRepositoryImpl({required this.dataSource});
  @override
  Future<(List<PhotosEntity>?, Failure?)> getAllPhotos() async {
    final response = await dataSource.getAllPhotos();
    return (response, null);
  }
}
