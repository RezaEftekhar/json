import 'package:json_place_holder/albums/domain/entity/albums_entity.dart';
import 'package:json_place_holder/core/error/failure.dart';


abstract class AlbumsRepository {
  Future<(List<AlbumsEntity>?, Failure?)> getAllAlbums();
}
