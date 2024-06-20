part of 'posts_bloc.dart';

abstract class PostsState {
  List<PostEntity>? posts;
  final String? error;
  PostsState({this.error, this.posts});
}

final class PostsInitial extends PostsState {}

class PostsLoading extends PostsState {}

class GetPostsCompleted extends PostsState {
  GetPostsCompleted({super.posts});
}

class PostRequestsCompleted extends PostsState {}

class PatchRequestsCompleted extends PostsState {}

class PostsError extends PostsState {
  PostsError({super.error});
}

class UpdatePostCompleted extends PostsState {}
