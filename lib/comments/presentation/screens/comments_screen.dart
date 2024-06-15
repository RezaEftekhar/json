import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:json_place_holder/comments/presentation/bloc/comments_bloc.dart';
import 'package:json_place_holder/comments/presentation/widgets/comments_item_widget.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({super.key});

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  void didChangeDependencies() {
    GetIt.I<CommentsBloc>().add(GetComments());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: BlocBuilder<CommentsBloc, CommentsState>(
        builder: (context, state) {
          if (state is GetCommentsCompleted) {
            return ListView.builder(
              itemCount: state.comments!.length,
              itemBuilder: (context, index) {
                return CommentsItemWidget(item: state.comments![index]);
              },
            );
          } else if (state is CommentsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
