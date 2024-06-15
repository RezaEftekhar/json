import 'package:flutter/material.dart';
import 'package:json_place_holder/users/domain/entity/users_entity.dart';

class UserItemsWidget extends StatelessWidget {
  final UsersEntity item;
  const UserItemsWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 650,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 228, 228, 228),
              Color.fromARGB(255, 177, 171, 3),
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
                'id:${item.id}',
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
                "UserName:${item.username}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Email:${item.email}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Street:${item.address!.street}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Suite:${item.address!.suite}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "City:${item.address!.city}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ZipCode:${item.address!.zipcode}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "lattitute:${item.address!.geo!.lat}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "longitute:${item.address!.geo!.lng}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Phone:${item.phone}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Website:${item.website}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Company Nmae:${item.company!.name}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Company catchPhrase:${item.company!.catchPhrase}",
                maxLines: 3,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Company bs:${item.company!.bs}",
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
