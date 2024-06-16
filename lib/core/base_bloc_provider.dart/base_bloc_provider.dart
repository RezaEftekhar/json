import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:json_place_holder/albums/presentation/bloc/albums_bloc.dart';
import 'package:json_place_holder/comments/presentation/bloc/comments_bloc.dart';
import 'package:json_place_holder/photos/presentation/bloc/photos_bloc.dart';
import 'package:json_place_holder/post%20request/presentation/bloc/post_request_bloc.dart';
import 'package:json_place_holder/posts/presentation/bloc/posts_bloc.dart';
import 'package:json_place_holder/todos/presentation/bloc/todos_bloc.dart';
import 'package:json_place_holder/users/presentation/bloc/user_bloc.dart';

class BaseBlocProvider extends StatelessWidget {
  const BaseBlocProvider({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => GetIt.I<PostsBloc>(),
      ),
      BlocProvider(
        create: (context) => GetIt.I<CommentsBloc>(),
      ),
      BlocProvider(
        create: (context) => GetIt.I<AlbumsBloc>(),
      ),
      BlocProvider(
        create: (context) => GetIt.I<PhotosBloc>(),
      ),
      BlocProvider(
        create: (context) => GetIt.I<TodosBloc>(),
      ),
      BlocProvider(
        create: (context) => GetIt.I<UserBloc>(),
      ),
      BlocProvider(
        create: (context) => GetIt.I<PostRequestBloc>(),
      )
    ], child: child);
  }
}
