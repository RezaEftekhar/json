import 'package:flutter/material.dart';
import 'package:json_place_holder/albums/presentation/screens/albums_screen.dart';
import 'package:json_place_holder/comments/presentation/screens/comments_screen.dart';
import 'package:json_place_holder/common/models/home_model.dart';
import 'package:json_place_holder/common/widgets/home_items_widget.dart';
import 'package:json_place_holder/photos/presentation/screens/photos_screen.dart';
import 'package:json_place_holder/post%20request/presentation/screens/post_request_screen.dart';
import 'package:json_place_holder/posts/presentation/screens/posts_screen.dart';
import 'package:json_place_holder/todos/presentation/screens/todos_screen.dart';
import 'package:json_place_holder/users/presentation/Screens/users_screen.dart';

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
                        builder: (context) => const PostScreen(),
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
              }
            },
          );
        },
      ),
    );
  }
}
