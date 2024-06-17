import 'package:bloc/bloc.dart';
import 'package:json_place_holder/patch%20request/domain/usecase/patch_request_usecase.dart';

part 'patch_request_event.dart';
part 'patch_request_state.dart';

class PatchRequestBloc extends Bloc<PatchRequestEvent, PatchRequestState> {
  final PatchRequestUsecase usecase;
  PatchRequestBloc({required this.usecase}) : super(PatchRequestInitial()) {
    on<PatchAllRequests>((event, emit) async {
      emit(PatchRequestLoading());
      var (data, error) =
          await usecase.call({'title': event.title, 'body': event.body});
      data != null
          ? emit(PatchAllRequestsCompleted())
          : emit(PatchRequestError(error: error.toString()));
    });
  }
}
