import 'package:json_place_holder/albums/data/model/albums_model.dart';
import 'package:json_place_holder/albums/domain/entity/albums_entity.dart';
import 'package:json_place_holder/core/error/server_exception.dart';
import 'package:json_place_holder/core/network/api_provider.dart';

abstract class AlbumsRemoteDs {
  Future<List<AlbumsEntity>>? getAllAlbums();
}

class AlbumsRemoteDataSourceImpl implements AlbumsRemoteDs {
  final ApiProvider apiProvider;

  AlbumsRemoteDataSourceImpl({required this.apiProvider});
  @override
  Future<List<AlbumsEntity>>? getAllAlbums() async {
    try {
      final response = await apiProvider.get('albums');
      return AlbumsModel.frimList(response.data);
    } catch (e) {
      throw ServerException(statusCode: 505, message: e.toString());
    }
  }
}
