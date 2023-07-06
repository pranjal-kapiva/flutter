import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      child: const MyApp(),
      create: (context) => TaskProvider(),
    ),
  );
}

class Task {
  final String title;
  bool status;

  Task({required this.title, this.status = false});
}

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: "Flutter"),
    Task(title: "Node"),
    Task(title: "React"),
    Task(title: "Javascript"),
    Task(title: "Dart"),
    Task(title: "HTML"),
    Task(title: "CSS"),
    Task(title: "MongoDB"),
  ];

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    final newTask = Task(title: title);
    tasks.add(newTask);
    notifyListeners();
  }

  void updateStatus(int index) {
    tasks[index].status = !tasks[index].status;
    _tasks = [...tasks]; // required for selector only
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    _tasks = [...tasks]; // required for selector only
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    //final taskList = Provider.of<TaskProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      // body: Selector<TaskProvider, List<Task>>(
      //   selector: (context, tasklist) => tasklist.tasks,
      //   builder: (context, tasks, __) {
      //     return ListView.builder(
      //       itemCount: tasks.length,
      //       itemBuilder: (context, index) {
      //         final task = tasks[index];
      //         return ListTile(
      //           title: Text(task.title),
      //           subtitle: Center(
      //             child: Row(
      //               children: [
      //                 ElevatedButton(
      //                   onPressed: () {
      //                     Provider.of<TaskProvider>(context, listen: false)
      //                         .updateStatus(index);
      //                   },
      //                   child:
      //                       Text(task.status ? 'Completed' : 'Not Completed'),
      //                 ),
      //                 ElevatedButton(
      //                   onPressed: () {
      //                     Provider.of<TaskProvider>(context, listen: false)
      //                         .deleteTask(index);
      //                   },
      //                   child: const Text("DELETE"),
      //                 )
      //               ],
      //             ),
      //           ),
      //         );
      //       },
      //     );
      //   },
      // ),
      body: Consumer<TaskProvider>(
        builder: (_, tasklist, __) {
          return ListView.builder(
            itemCount: tasklist.tasks.length,
            itemBuilder: (context, index) {
              final task = tasklist.tasks[index];
              return ListTile(
                title: Text(task.title),
                subtitle: Center(
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          tasklist.updateStatus(index);
                        },
                        child:
                            Text(task.status ? 'Completed' : 'Not Completed'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          tasklist.deleteTask(index);
                        },
                        child: const Text("DELETE"),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
