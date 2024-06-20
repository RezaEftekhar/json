import 'package:flutter/material.dart';
import 'package:json_place_holder/Features/albums/presentation/screens/albums_screen.dart';
import 'package:json_place_holder/comments/presentation/screens/comments_screen.dart';
import 'package:json_place_holder/common/models/home_model.dart';
import 'package:json_place_holder/common/widgets/home_items_widget.dart';
import 'package:json_place_holder/Features/photos/presentation/screens/photos_screen.dart';
import 'package:json_place_holder/Features/posts/presentation/screens/get_posts_screen.dart';
import 'package:json_place_holder/Features/todos/presentation/screens/todos_screen.dart';
import 'package:json_place_holder/Features/users/presentation/Screens/users_screen.dart';
import 'package:json_place_holder/Features/posts/presentation/screens/patch_request_screen.dart';
import 'package:json_place_holder/Features/posts/presentation/screens/post_request_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JsonPlaceHolder Apis'),
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: homeModel.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return HomeItemsWidget(
            items: homeModel[index],
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GetPostScreen(),
                      ));
                case 1:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CommentsScreen(),
                      ));
                case 2:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AlbumsScreen(),
                      ));
                case 3:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PhotosScreen(),
                      ));
                case 4:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TodosScreen(),
                      ));
                case 5:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UsersScreen(),
                      ));
                case 6:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostRequestScreen(),
                      ));
                case 7:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PatchRequestScreen()));
              }
            },
          );
        },
      ),
    );
  }
}
