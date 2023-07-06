import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class User {
  int id;
  String name;
  String email;
  String company;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.company});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      company: json['company'],
    );
  }
}

class GridDisplay extends ChangeNotifier {
  final List<User> _users = [];

  List<User> get users => _users;
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              'Home Page',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        // Center(
        //   child: GridView.count(
        //       crossAxisCount: 2,
        //       mainAxisSpacing: 20,
        //       crossAxisSpacing: 20,
        //       padding: const EdgeInsets.all(8),
        //       children: List.generate(10, (index) {
        //         return build(context);
        //       })),
        // )
      ],
    );
  }
}
