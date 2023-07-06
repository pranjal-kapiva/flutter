import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kapiva App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Center(
          //   child: Container(
          //     height: 80,
          //     width: MediaQuery.of(context).size.width,
          //     padding: const EdgeInsets.all(10),
          //     decoration: const BoxDecoration(
          //       color: Colors.white,
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey,
          //           offset: Offset(0, 4),
          //           blurRadius: 4,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(
                    1.0,
                    1.0,
                  ),
                  blurRadius: 1.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.red,
                  margin: const EdgeInsets.all(8),
                  child: const Text(
                    "Pesonalized for You",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: const EdgeInsets.only(
                    top: 8,
                    bottom: 20,
                    left: 8,
                    right: 8,
                  ),
                  child: const Text(
                    "People with similar health goals also brought",
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.4,
                      style: BorderStyle.solid,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.12,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(4),
                        child: Image.network(
                          'https://4wdpmdxj.cdn.imgeng.in/https://cdn11.bigcommerce.com/s-5h8rqg02f8/images/stencil/800x800/products/467/3608/shilajit_copy_1__62890.1683095278.jpg?c=1',
                          // width: 100,
                          height: MediaQuery.of(context).size.height * 0.12,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(4),
                        // color: Colors.yellow,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Dia Free Juice and Aloe"),
                            const Text("Garcinia Juice - Diabeties"),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.star, size: 16),
                                        Text("4.5/5"),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(Icons.currency_rupee, size: 16),
                                        Text("1500"),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 70,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("BUY NOW"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Positioned(
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     child: const Text("BUY NOW"),
                      //   ),
                      // ),

                      // Align(
                      //   alignment: FractionalOffset.bottomRight,
                      // child: ElevatedButton(
                      //   onPressed: () {},
                      //   child: const Text("BUY NOW"),
                      // ),
                      // ),

                      // Stack(
                      //   children: [
                      //     Positioned(
                      //       top: 100,
                      //       left: 10,
                      //       child: ElevatedButton(
                      //         onPressed: () {},
                      //         child: const Text("BUY"),
                      //       ),
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
            child: const Text(
              "Order Summary",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
