import 'package:flutter/material.dart';
import 'package:json_place_holder/common/models/home_model.dart';

class HomeItemsWidget extends StatelessWidget {
  const HomeItemsWidget({super.key, this.onTap, required this.items});
  final HomeModel items;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 228, 228, 228),
                  Color.fromARGB(255, 4, 184, 145),
                ], begin: Alignment.bottomLeft),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 67, 59, 59),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(4, 5)),
                ]),
            child: Center(
                child: Text(
              items.title,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 85, 75, 75)),
            )),
          )),
    );
  }
}
