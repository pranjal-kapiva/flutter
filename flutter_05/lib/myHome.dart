import 'package:flutter/material.dart';
import './hometab.dart';
import './shop.dart';
import './track.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHome> {
  int _selectIndex = 0;

  final List<Widget> _screenoption = [
    const HomeTab(),
    const Shop(),
    const Track(),
  ];

  void _onNavigationTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Demo App"),
      ),
      endDrawer: Align(
        alignment: Alignment.topRight,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: Text(
                  'Sidebar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Home'),
                onTap: () {
                  const HomeTab();
                },
              ),
              ListTile(
                title: const Text('Shop'),
                onTap: () {
                  const Shop();
                },
              ),
              ListTile(
                title: const Text('Track'),
                onTap: () {
                  const Track();
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: _screenoption[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: "Track",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.balance),
          //   label: "4 Balance",
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.account_box),
          //   label: "Account",
          // ),
        ],
        currentIndex: _selectIndex,
        // selectedItemColor: Colors.deepPurple,
        // unselectedItemColor: Colors.deepPurple,
        // showUnselectedLabels: true,
        onTap: _onNavigationTapped,
      ),
    );
  }
}
