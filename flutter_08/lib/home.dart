import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  List<dynamic> dataList = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    setState(() {
      isLoading = true;
    });

    var fetchURL = 'https://jsonplaceholder.typicode.com/todos';
    var parseURL = Uri.parse(fetchURL);
    final res = await http.get(parseURL);

    if (res.statusCode == 200) {
      final data = json.decode(res.body);
      setState(() {
        dataList = data;
        isLoading = false;
      });
    } else {
      setState(() {
        dataList = [];
        isLoading = false;
      });
    }
  }

  Future<void> refreshData() async {
    await fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: _listBody(),
    );
  }

  Widget _listBody() {
    if (isLoading == false && dataList.isEmpty) {
      return const Center(
        child: Text("Data not found"),
      );
    } else if (isLoading == true) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return RefreshIndicator(
        onRefresh: refreshData,
        child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (BuildContext context, int index) {
            final item = dataList[index];
            return _displayListData(item);
          },
        ),
      );
    }
  }
}

Widget _displayListData(Map<String, dynamic> item) {
  return ListTile(
    title: Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      child: Center(
        child: Text(
          item['title'],
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
    subtitle: Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      child: Center(
        child: Text(
          item["completed"] ? 'Completed' : 'Not Completed',
          style: const TextStyle(
            color: Colors.blueGrey,
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    ),
  );
}
