part of 'post_request_bloc.dart';


abstract class PostRequestEvent {
  final String? title;
  final String? body;

  PostRequestEvent({required this.title, required this.body});
}

class PostAllRequests extends PostRequestEvent{
  PostAllRequests({required super.title, required super.body});
}
