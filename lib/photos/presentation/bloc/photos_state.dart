part of 'photos_bloc.dart';

abstract class PhotosState {
   List<PhotosEntity>? photos;
  final String? error;

  PhotosState({this.photos, this.error});
}

final class PhotosInitial extends PhotosState {}

class PhotosLoading extends PhotosState {}

class GetAllPhotosCompleted extends PhotosState {
  GetAllPhotosCompleted({super.photos});
}

class PhotosError extends PhotosState {
  PhotosError({super.error});
}
