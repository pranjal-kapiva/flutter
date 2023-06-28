import 'package:flutter/material.dart';
import './todoItem.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final todoList = Todo.todoData();
  List<Todo> listData = [];

  String inputVal = "";
  final _todoController = TextEditingController();

  @override
  void initState() {
    listData = todoList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
              ),
              margin: const EdgeInsets.all(30),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextFormField(
                      controller: _todoController,
                      decoration: const InputDecoration(
                        labelText: "Enter Task",
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      addToDoItem(_todoController.text);
                      _todoController.clear();
                    },
                    child: const Text('ADD'),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                final todoItem = listData[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(todoItem.id),
                      SizedBox(
                        width: 150,
                        child: Text(todoItem.title),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            todoItem.status = !todoItem.status;
                          });
                        },
                        child: Text(
                          todoItem.status ? 'Completed' : 'Not Completed',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            todoList.removeAt(index);
                          });
                        },
                        child: const Text("DELETE"),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void addToDoItem(String title) {
    Todo newTodo = Todo(
      title: title,
      id: (int.parse(listData.last.id) + 1).toString(),
      status: false,
    );

    setState(() {
      todoList.add(newTodo);
    });
  }
}
