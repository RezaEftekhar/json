import 'package:json_place_holder/core/error/server_exception.dart';
import 'package:json_place_holder/core/network/api_provider.dart';
import 'package:json_place_holder/Features/photos/data/model/photos_model.dart';
import 'package:json_place_holder/Features/photos/domain/entity/photos_entity.dart';

abstract class PhotosRemoteDs {
  Future<List<PhotosEntity>>? getAllPhotos();
}

class PhotosDataSourceImpl implements PhotosRemoteDs {
  final ApiProvider apiprovider;

  PhotosDataSourceImpl({required this.apiprovider});
  @override
  Future<List<PhotosEntity>>? getAllPhotos() async {
    try {
      final response = await apiprovider.get('photos');
     return PhotosModel.fromList(response.data);
    } catch (e) {
      throw ServerException(statusCode: 505, message: e.toString());
    }
  }
}
