import 'package:bloc/bloc.dart';
import 'package:json_place_holder/Features/albums/domain/entity/albums_entity.dart';
import 'package:json_place_holder/Features/albums/domain/usecase/albums_usecase.dart';

part 'albums_event.dart';
part 'albums_state.dart';

class AlbumsBloc extends Bloc<AlbumsEvent, AlbumsState> {
  final AlbumsUsecase usecase;
  AlbumsBloc({required this.usecase}) : super(AlbumsInitial()) {
    on<AlbumsEvent>(getAllAlbums);
  }

  void getAllAlbums(event, emit) async {
    emit(AlbumsLoading());
    var (data, error) = await usecase.call();

    data != null
        ? emit(GetAllAlbumsCompleted(albums: data))
        : emit(AlbumsError(error: error.toString()));
  }
}
