part of 'post_request_bloc.dart';

abstract class PostRequestState {
  final String? error;

  PostRequestState({this.error});
}

class PostRequestInitial extends PostRequestState {}

class PostRequestLoading extends PostRequestState {}

class PostRequestCompleted extends PostRequestState {}

class PostRequestError extends PostRequestState {
  PostRequestError({super.error});
}
