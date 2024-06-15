import 'package:bloc/bloc.dart';
import 'package:json_place_holder/comments/domain/entity/comments_entity.dart';
import 'package:json_place_holder/comments/domain/usecase/comments_usecase.dart';

part 'comments_event.dart';
part 'comments_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final CommentsUsecase usecase;
  CommentsBloc({required this.usecase}) : super(CommentsInitial()) {
    on<GetComments>(getAllComments);
  }

  void getAllComments(event, emit) async {
    emit(CommentsLoading());

    var (data, error) = await usecase.call();
     
    data != null
        ? emit(GetCommentsCompleted(comments: data))
        : emit(CommentsError(error: error.toString()));
  }
}
