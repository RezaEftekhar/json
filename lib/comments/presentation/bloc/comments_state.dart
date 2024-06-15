part of 'comments_bloc.dart';

abstract class CommentsState {
  List<CommentsEntity>? comments;
  final String? error;

  CommentsState({this.comments, this.error});
}

class CommentsInitial extends CommentsState {}

class CommentsLoading extends CommentsState {}

class GetCommentsCompleted extends CommentsState{
  GetCommentsCompleted({super.comments});
}

class CommentsError extends CommentsState{
  CommentsError({super.error});
}
