part of 'patch_request_bloc.dart';

abstract class PatchRequestState {
  final String? error;

  PatchRequestState({this.error});
}

class PatchRequestInitial extends PatchRequestState {}

class PatchRequestLoading extends PatchRequestState {}

class PatchAllRequestsCompleted extends PatchRequestState {}

class PatchRequestError extends PatchRequestState {
  PatchRequestError({super.error});
}
