import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_place_holder/Features/posts/domain/entity/posts_entity.dart';
import 'package:json_place_holder/Features/posts/presentation/bloc/posts_bloc.dart';
import 'package:json_place_holder/common/screens/home_screen.dart';

class EditPostScreen extends StatefulWidget {
  final PostEntity post;
  const EditPostScreen({super.key, required this.post});

  @override
  State<EditPostScreen> createState() => _EditPostScreenState();
}

class _EditPostScreenState extends State<EditPostScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  @override
  void initState() {
    _titleController.text = widget.post.title ?? '';
    _bodyController.text = widget.post.body ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Post'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [ 
            TextField(
              controller: _titleController,
              maxLines: 3,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
               controller: _bodyController,
               maxLines: 5,
              decoration: const InputDecoration(labelText: 'Body',),
            ),
            BlocConsumer<PostsBloc, PostsState>(
            listener: (context, state) {
              if (state is UpdatePostCompleted) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              }
            },
            builder: (context, state) {
              return state is PostsLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Padding(
                      padding: const EdgeInsets.all(25),
                      child: ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<PostsBloc>(context)
                                .add(UpdatePost(
                              title: _titleController.text,
                              body: _bodyController.text,
                            ));
                          },
                          child: const Text('Send')),
                    );
            },
          )

          ],
        ),
      ),
    );
  }
}
