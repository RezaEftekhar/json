import 'package:bloc/bloc.dart';
import 'package:json_place_holder/photos/domain/entity/photos_entity.dart';
import 'package:json_place_holder/photos/domain/usecase/get_photos_usecase.dart';

part 'photos_event.dart';
part 'photos_state.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final GetPhotosUsecase usecase;
  PhotosBloc({required this.usecase}) : super(PhotosInitial()) {
    on<GetAllPhotos>(getAllPhotos);
  }
  
  void getAllPhotos(event, emit) async {
    emit(PhotosLoading());
    var (data, error) = await usecase.call();
 
    data != null
        ? emit(GetAllPhotosCompleted(photos: data))
        : emit(PhotosError(error: error.toString()));
  }
}
