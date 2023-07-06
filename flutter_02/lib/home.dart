import 'package:flutter/material.dart';
import 'todo_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final todoList = Todo.todoData();
  List<Todo> listData = [];

  final _todoController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> drawerButton = ["Menu", "About", "Setting"];

  @override
  void initState() {
    listData = todoList;
    super.initState();
  }

  void _handleSearchTextChanged(String srchTxt) {
    setState(() {
      listData = todoList
          .where((item) =>
              item.title.toLowerCase().contains(srchTxt.toLowerCase()))
          .toList();
    });
  }

  void addToDoItem(String title) {
    Todo newTodo = Todo(
      title: title,
      id: (int.parse(listData.last.id) + 1).toString(),
      status: false,
    );
    setState(() {
      listData = todoList;
      todoList.add(newTodo);
    });
  }

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        // leading: IconButton(
        //   onPressed: () {
        //     _openDrawer();
        //   },
        //   icon: const Icon(Icons.menu),
        // ),
        // actions: [
        //   Container(
        //       margin: const EdgeInsets.all(8),
        //       child: ElevatedButton(
        //         onPressed: () {
        //           _openDrawer();
        //         },
        //         child: const Icon(
        //           Icons.edit,
        //         ),
        //       ))
        // ],
      ),
      endDrawer: Align(
        alignment: Alignment.topRight,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 30, 150, 0),
                ),
                child: Text(
                  'Sidebar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              // _drawerSection(),
              // _drawerSection(),
              // _drawerSection(),
              ListTile(
                title: const Text('About'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Setting'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Heading
            Center(
              child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 0,
                        color: Color.fromARGB(255, 30, 150, 0),
                      ),
                      left: BorderSide(
                        width: 10,
                        color: Color.fromARGB(255, 30, 150, 0),
                      ),
                      right: BorderSide(
                        width: 10,
                        color: Color.fromARGB(255, 30, 150, 0),
                      ),
                      bottom: BorderSide(
                        width: 10,
                        color: Color.fromARGB(255, 30, 150, 0),
                      ),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(20),
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "My ",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 74, 42, 3),
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: "Todo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 18, 74, 3),
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            // Image
            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Image.asset(
                  "assets/todo.jpg",
                  width: 200,
                ),
              ),
            ),
            // Search Bar
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  onChanged: _handleSearchTextChanged,
                  decoration: const InputDecoration(
                    hintText: 'Search Task',
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
            ),
            // Add Task Form
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                margin: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      // margin: const EdgeInsets.all(2),
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextFormField(
                        controller: _todoController,
                        decoration: const InputDecoration(
                          labelText: "Enter Task",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(
                              Size(100, 30),
                            ),
                          ),
                          onPressed: () {
                            addToDoItem(_todoController.text);
                            _todoController.clear();
                          },
                          child: const Text('ADD'),
                        )),
                  ],
                ),
              ),
            ),
            // Display list
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: listData.length,
                itemBuilder: (BuildContext context, int index) {
                  final todoItem = listData[index];
                  return _listItemWidget(todoItem, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _listItemWidget(todoItem, index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(todoItem.id),
          Center(
            child: SizedBox(
              width: 80,
              child: Text(
                todoItem.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              fixedSize: MaterialStatePropertyAll(
                Size(150, 30),
              ),
            ),
            onPressed: () {
              setState(() {
                todoItem.status = !todoItem.status;
              });
            },
            child: Text(
              todoItem.status ? 'Completed' : 'Not Completed',
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              fixedSize: MaterialStatePropertyAll(
                Size(100, 30),
              ),
            ),
            onPressed: () {
              setState(() {
                todoList.removeAt(index);
              });
            },
            child: const Text(
              "DELETE",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
