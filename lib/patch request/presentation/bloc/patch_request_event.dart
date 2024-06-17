part of 'patch_request_bloc.dart';

abstract class PatchRequestEvent {
  final String? title;
  final String? body;

  PatchRequestEvent({required this.title, required this.body});
}

class PatchAllRequests extends PatchRequestEvent {
  PatchAllRequests({required super.title, required super.body});
}
