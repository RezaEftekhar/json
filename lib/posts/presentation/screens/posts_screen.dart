import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:json_place_holder/posts/presentation/bloc/posts_bloc.dart';
import 'package:json_place_holder/posts/presentation/widgets/post_items_widget.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  void didChangeDependencies() {
    GetIt.I<PostsBloc>().add(GetAllPosts());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) {
          if (state is GetPostsCompleted) {
            return ListView.builder(
              itemCount: state.posts!.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return PostItemsWidget(item: state.posts![index]);
              },
            );
          } else if (state is GetPostsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
