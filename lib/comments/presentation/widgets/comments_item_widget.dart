import 'package:flutter/material.dart';
import 'package:json_place_holder/comments/domain/entity/comments_entity.dart';

class CommentsItemWidget extends StatelessWidget {
  final CommentsEntity item;
  const CommentsItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 228, 228, 228),
              Color.fromARGB(255, 163, 174, 16),
            ], begin: Alignment.bottomLeft),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 67, 59, 59),
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: Offset(4, 5)),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'id:${item.id.toString()}',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 115, 107, 107)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Name:${item.name}',
                maxLines: 2,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 61, 50, 50)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Email:${item.email}',
                maxLines: 2,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 61, 50, 50)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "description:${item.body}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
