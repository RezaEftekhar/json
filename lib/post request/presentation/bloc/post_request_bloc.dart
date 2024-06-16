import 'package:bloc/bloc.dart';
import 'package:json_place_holder/post%20request/domain/usecase/post_request_usecase.dart';

part 'post_request_event.dart';
part 'post_request_state.dart';

class PostRequestBloc extends Bloc<PostRequestEvent, PostRequestState> {
  final PostRequestUsecase usecase;
  PostRequestBloc({required this.usecase}) : super(PostRequestInitial()) {
    on<PostAllRequests>((event, emit) async {
      emit(PostRequestLoading());

      var (data, error) =
          await usecase.call({'title': event.title, 'body': event.body});
      data != null
          ? emit(PostRequestCompleted())
          : emit(PostRequestError(error: error.toString()));
    });
  }
}
