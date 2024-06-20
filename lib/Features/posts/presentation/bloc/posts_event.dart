part of 'posts_bloc.dart';

abstract class PostsEvent {
  final String? title;
  final String? body;

  PostsEvent({this.title, this.body});
}

class GetAllPosts extends PostsEvent {}

class PostRequests extends PostsEvent {
  PostRequests({super.title, super.body});
}

class PatchRequests extends PostsEvent {
  PatchRequests({super.title, super.body});
}

class UpdatePost extends PostsEvent {
  UpdatePost({super.title, super.body});
}
