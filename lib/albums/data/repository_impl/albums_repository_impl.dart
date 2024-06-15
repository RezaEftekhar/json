import 'package:json_place_holder/albums/data/dataSource/albums_dataSource.dart';
import 'package:json_place_holder/albums/domain/entity/albums_entity.dart';
import 'package:json_place_holder/albums/domain/repository/albums_repository.dart';
import 'package:json_place_holder/core/error/failure.dart';

class AlbumsRepositoryImpl implements AlbumsRepository {
  final AlbumsRemoteDs dataSource;

  AlbumsRepositoryImpl({required this.dataSource});

  @override
  Future<(List<AlbumsEntity>?, Failure?)> getAllAlbums() async {
    final response = await dataSource.getAllAlbums();
    return (response, null);
  }
}
