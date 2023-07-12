import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String doctorUrl =
    "https://www.kapiva.in/consult-a-doctor/?utm_source=menu&utm_medium=app";

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
      theme: ThemeData(primarySwatch: Colors.green),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: const [
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
                  ),
                ],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 8,
                      left: 8,
                      right: 8,
                    ),
                    child: const Text(
                      "Pesonalized for You",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 8,
                      bottom: 20,
                      left: 8,
                      right: 8,
                    ),
                    child: const Text(
                      "People with similar health goals also brought",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
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
                    // height: MediaQuery.of(context).size.height * 0.13,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(4),
                          child: Image.network(
                            'https://4wdpmdxj.cdn.imgeng.in/https://cdn11.bigcommerce.com/s-5h8rqg02f8/images/stencil/800x800/products/467/3608/shilajit_copy_1__62890.1683095278.jpg?c=1',
                            height: MediaQuery.of(context).size.height * 0.12,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Dia Free Juice and Aloe"),
                                const Text("Garcinia Juice - Diabeties ..."),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(Icons.star, size: 16),
                                            Text(
                                              "4.5/5",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Icon(Icons.currency_rupee,
                                                size: 16),
                                            Text(
                                              "1500",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                height: 1.4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    // const SizedBox(
                                    //   width: 70,
                                    // ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                          const Color(0XFF80A03C),
                                        ),
                                      ),
                                      child: const Text(
                                        "BUY NOW",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 0,
                      bottom: 8,
                      left: 8,
                      right: 8,
                    ),
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "FOR : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF80A03C),
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: "Better efficiency & faster results",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 0,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 252, 227),
                    ),
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(6),
                          child: Image.network(
                            'https://4wdpmdxj.cdn.imgeng.in/https://cdn11.bigcommerce.com/s-5h8rqg02f8/images/stencil/800x800/products/467/3608/shilajit_copy_1__62890.1683095278.jpg?c=1',
                            height: MediaQuery.of(context).size.height * 0.09,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(4),
                            height: MediaQuery.of(context).size.height * 0.09,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Congratulations!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Your ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          fontStyle: FontStyle.italic,
                                          height: 1.5,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Shilajit Gold Resins ",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.italic,
                                          height: 1.5,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            "will be \ndelivered with your order.",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic,
                                          height: 1.5,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.only(
                top: 28,
                left: 20,
                right: 20,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFDFE7CE), Color(0xFFFFFFFF)],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "You've unlocked 3 free Doctor Consultations!",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Book a slot now and get a personalized plan",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 12, right: 8),
                              decoration: BoxDecoration(
                                color: const Color(0XFF80A03C),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 24,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      launchUrl(
                                        Uri.parse(doctorUrl),
                                        mode: LaunchMode.inAppWebView,
                                      );
                                    },
                                    child: const Text(
                                      "Book your 1st consulation",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Colors.white,
                                        letterSpacing: 0.35,
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_double_arrow_right,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/Ellipse43.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              // color: Colors.yellow,
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                bottom: 10,
                right: 20,
              ),
              child: const Text(
                "Order Summary",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: const [
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
                  ),
                ],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 11,
                    ),
                    color: const Color(0xFFDAE9E7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 6),
                          child: Image.asset(
                            "assets/path_img.png",
                            fit: BoxFit.cover,
                            width: 24,
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            "You will earn ₹ 100 in Kapiva wallet upon delivery",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "ORDER ID: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: "234532",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Details",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            color: Color(0XFFC97B5A),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/rectangle_1209.png'),
                        Column(
                          children: const [
                            Text(
                              "Himalayan Shilajit",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "+ 3 more products",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "₹ 14050",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 0.75,
                    height: 32,
                    color: Colors.black,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      left: 15,
                      right: 15,
                    ),
                    width: double.infinity,
                    child: const Text(
                      "Order Status",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      left: 18,
                      right: 18,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _orderStatusIcon("confirmed.png", 0XFFF6F6BF),
                        Container(
                          height: 2,
                          width: 30,
                          color: Colors.black,
                        ),
                        _orderStatusIcon("vec.png", 0XFFFFFFFF),
                        Container(
                          height: 2,
                          width: 30,
                          color: Colors.black,
                        ),
                        _orderStatusIcon("path_24.png", 0XFFFFFFFF),
                        Container(
                          height: 2,
                          width: 30,
                          color: Colors.black,
                        ),
                        _orderStatusIcon("vector_1.png", 0XFFFFFFFF),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 9,
                      // left: 15,
                      // right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _orderStatus("Confirmed", "on 24 Aug", 0XFF80A03C),
                        _orderStatus("Packed", 'in 2 days', 0XFF000000),
                        _orderStatus("Shipped", 'in 4 days', 0XFF000000),
                        _orderStatus("Delivery", "by 28 Aug", 0XFF000000),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 10,
                    ),
                    margin: const EdgeInsets.only(
                      top: 20,
                      left: 15,
                      right: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFF4E5DE),
                    ),
                    width: double.infinity,
                    child: const Text(
                      "NOTE: Order may be delayed due to heavy rains",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFC97B5A),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 0.75,
                    height: 32,
                    color: Colors.black,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      // top: 20,
                      bottom: 20,
                    ),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Delivering To",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            height: 2,
                          ),
                        ),
                        Text(
                          "Rithika, 11-B soorya heights,",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          "kalmandappam, palakkad, Kerala",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              // color: Colors.yellow,
              margin: const EdgeInsets.only(
                top: 40,
                left: 20,
                bottom: 20,
                right: 20,
              ),
              child: const Text(
                "Pay online & Save extra",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 14,
              ),
              decoration: BoxDecoration(
                boxShadow: const [
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
                  ),
                ],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/PAY_ONLINE_ANIMATION.png",
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "You're",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " losing ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFFC97B5A),
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "out on extra",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      children: const [
                                        Text(
                                          "KAPIVA",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          "CASH",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "since you have opted for ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        letterSpacing: 0.25,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "COD",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0XFFC97B5A),
                                        fontSize: 1,
                                        letterSpacing: 0.25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 2),
                          child: const Text(
                            "Pay online now & earn 100 Kapiva Cash in your wallet",
                            style: TextStyle(fontSize: 11),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 14,
                              // horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0XFFFFFFFF),
                                width: 0,
                              ),
                              color: const Color(0XFF80A03C),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            width: double.infinity,
                            child: const Text(
                              "Convert to Online",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFFFFFFFF),
                                letterSpacing: 0.75,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                            boxShadow: const [
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
                              ),
                            ],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 28,
                          ),
                          margin: const EdgeInsets.only(top: 50, right: 5),
                          child: Column(
                            children: [
                              const Text(
                                'Follow us on',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 30,
                                  left: 4,
                                  right: 4,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _orderStatusIcon(
                                        "confirmed.png", 0XFFF6F6BF),
                                    _orderStatusIcon("vec.png", 0XFFFFFFFF),
                                    _orderStatusIcon("path_24.png", 0XFFFFFFFF),
                                    _orderStatusIcon(
                                        "vector_1.png", 0XFFFFFFFF),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        _postionedAvatar("Ellipse43.png"),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                            boxShadow: const [
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
                              ),
                            ],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 28,
                          ),
                          margin: const EdgeInsets.only(top: 50, left: 5),
                          child: Column(
                            children: [
                              const Text(
                                'Contact us',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 8,
                                  left: 4,
                                  right: 4,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.mail_outline),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "info@kapiva.in",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 8,
                                  left: 4,
                                  right: 4,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.call),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "1800-274-2575",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        _postionedAvatar("Ellipse43.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0XFF80A03C),
                ),
              ),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(
                      vertical: 14,
                      // horizontal: 20,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  shadowColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                ),
                onPressed: () {
                  print("Congrats");
                },
                child: const Text(
                  "Continue Shopping",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF80A03C),
                    letterSpacing: 0.75,
                  ),
                ),
              ),
            ),
            // InkWell(
            //   onTap: () {},
            //   child: Container(
            //     padding: const EdgeInsets.symmetric(
            //       vertical: 16,
            //       horizontal: 20,
            //     ),
            //     margin: const EdgeInsets.only(
            //       top: 20,
            //       left: 20,
            //       right: 20,
            //       bottom: 20,
            //     ),
            //     decoration: BoxDecoration(
            //       border: Border.all(
            //         color: const Color(0XFF80A03C),
            //       ),
            //       borderRadius: BorderRadius.circular(4),
            //     ),
            //     width: double.infinity,
            //     child: const Text(
            //       "Continue Shopping",
            //       style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //         color: Color(0XFF80A03C),
            //         letterSpacing: 0.75,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

_orderStatusIcon(String img, dynamic clr) {
  return Container(
    width: 32,
    height: 32,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      color: Color(clr),
    ),
    child: ClipOval(
      child: Image.asset('assets/$img'),
    ),
  );
}

_orderStatus(String text1, String text2, dynamic clr) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        text1,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          height: 1.5,
        ),
      ),
      Text(
        text2,
        style: TextStyle(
          fontSize: 12,
          height: 1.5,
          color: Color(clr),
        ),
      ),
    ],
  );
}

_postionedAvatar(String img) {
  return Positioned(
    top: 16,
    left: 50,
    child: CircleAvatar(
      radius: 30,
      child: ClipOval(
        child: Image.asset(
          'assets/$img',
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
