part of 'posts_bloc.dart';

abstract class PostsState {
  List<PostEntity>? posts;
  final String? error;
  PostsState({this.error, this.posts});
}

final class PostsInitial extends PostsState {}

class GetPostsLoading extends PostsState {}

class GetPostsCompleted extends PostsState {
  GetPostsCompleted({super.posts});
}

class GetPostsError extends PostsState {
  GetPostsError({super.error});
}
