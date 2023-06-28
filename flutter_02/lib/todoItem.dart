import 'package:flutter/material.dart';

class Todo {
  String id;
  String title;
  bool status;

  Todo({
    required this.id,
    required this.title,
    this.status = false,
  });

  static List<Todo> todoData() {
    return [
      Todo(id: "1", title: "Flutter"),
      Todo(id: "2", title: "Node"),
      Todo(id: "3", title: "React"),
      Todo(id: "4", title: "Javascript"),
      Todo(id: "5", title: "Dart"),
    ];
  }
}
