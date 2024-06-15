import 'package:json_place_holder/albums/domain/entity/albums_entity.dart';
import 'package:json_place_holder/albums/domain/repository/albums_repository.dart';
import 'package:json_place_holder/core/error/failure.dart';

class AlbumsUsecase {
  final AlbumsRepository repository;

  AlbumsUsecase({required this.repository});

  Future<(List<AlbumsEntity>?, Failure?)> call() => repository.getAllAlbums();
}
