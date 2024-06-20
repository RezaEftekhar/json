import 'package:json_place_holder/Features/albums/data/dataSource/albums_dataSource.dart';
import 'package:json_place_holder/Features/albums/domain/entity/albums_entity.dart';
import 'package:json_place_holder/Features/albums/domain/repository/albums_repository.dart';
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
