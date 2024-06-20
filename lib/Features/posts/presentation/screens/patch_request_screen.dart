import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_place_holder/common/screens/home_screen.dart';
import 'package:json_place_holder/Features/posts/presentation/bloc/posts_bloc.dart';

class PatchRequestScreen extends StatefulWidget {
  const PatchRequestScreen({super.key});

  @override
  State<PatchRequestScreen> createState() => _PatchRequestScreenState();
}

class _PatchRequestScreenState extends State<PatchRequestScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patch Request'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: titleController,
              decoration: const InputDecoration(
                  hintText: 'Please write your title',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 3))),
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: bodyController,
              decoration: const InputDecoration(
                  hintText: 'Please write your description',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 3))),
            ),
          ),
          BlocConsumer<PostsBloc, PostsState>(
            listener: (context, state) {
              if (state is PatchRequestsCompleted) {
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
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<PostsBloc>(context)
                                .add(PatchRequests(
                              title: titleController.text,
                              body: bodyController.text,
                            ));
                          },
                          child: const Text('Send')),
                    );
            },
          )
        ],
      ),
    );
  }
}
