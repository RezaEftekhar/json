part of 'albums_bloc.dart';

abstract class AlbumsState {
   List<AlbumsEntity>? albums;
  final String? error;

  AlbumsState({this.albums, this.error});
}

class AlbumsInitial extends AlbumsState {}

class AlbumsLoading extends AlbumsState {}

class GetAllAlbumsCompleted extends AlbumsState {
  GetAllAlbumsCompleted({super.albums});
}

class AlbumsError extends AlbumsState {
  AlbumsError({super.error});
}
